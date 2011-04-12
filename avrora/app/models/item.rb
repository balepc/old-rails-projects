class Item < ActiveRecord::Base
  
  belongs_to :category
  belongs_to :country
  belongs_to :company
  
  has_many :images, :dependent => :destroy
  has_many :documents, :dependent => :destroy
  
  has_and_belongs_to_many :standards

  has_many :complectations
  has_many :accessories

  #  has_and_belongs_to_many :items, :class_name => 'Item', :join_table => 'complectation', :foreign_key => 'complectation_id'
  #  has_and_belongs_to_many :accessories, :class_name => 'Item', :join_table => 'accessories', :foreign_key => 'accessory_id'
  
  attr_accessor :pictures
  
  after_update :save_documents, :save_images
  validates_associated :documents
  validates_presence_of(:category, :message => "У продукта должна быть категория")
  validates_presence_of(:model, :message => "У продукта должна быть модель")

  translate_fields [:model, :code, :article, :shortdesc, :description]
  
  named_scope :by_contents, lambda {|query| {:include => [:country, :company], :conditions=>["`items`.description LIKE ? OR model LIKE ? OR code LIKE ? OR countries.name LIKE ? OR shortdesc LIKE ? OR companies.name LIKE ? OR article LIKE ?", "%#{query}%", "%#{query}%", "%#{query}%","%#{query}%", "%#{query}%","%#{query}%", "%#{query}%"]}}
  named_scope :by_category, lambda {|c| {:include => [:category], :conditions => ["(categories.lft > ? AND categories.rgt < ?) OR (category_id=?)", c.lft, c.rgt, c.id]}}

  #  named_scope :by_title,    lambda {|q| {:conditions=>["title LIKE ?", "%#{q}%"]}}

  named_scope :by_model,    lambda {|q| {:conditions=>["model LIKE ?", "%#{q}%"]}}
  named_scope :by_code,    lambda {|q| {:conditions=>["code LIKE ?", "%#{q}%"]}}
  named_scope :by_article,    lambda {|q| {:conditions=>["article LIKE ?", "%#{q}%"]}}

  named_scope :accessory, {:conditions=>{:accessory=>true}}
  named_scope :non_accessory, {:conditions=>{:accessory=>false}}
  
  def new_document_fields=(fields)
    fields.each do |fields|
      documents.build(fields)
    end
  end
  #
  def existing_document_fields=(fields)
    documents.reject(&:new_record?).each do |attribute|
      field = fields[attribute.id.to_s]
      if field
        attribute.attributes = field
      else
        documents.delete(attribute)
      end
    end
  end
  
  def selected_standards=(standard_ids)
    self.standards = Standard.find(standard_ids) 
  end
  ###################
  def selected_items=(lookups)
    self.complectations.each{|c| c.destroy}
    lookups.each do |lookup|
      lookup, count = lookup[:lookup], lookup[:count]
      item = Item.find_by_lookup(lookup)
      next if item and item.id == self.id
      next if item and item.accessory?
      self.complectations.build(:complectation_id=>item.id, :count=>count) if item
    end
  end
  def selected_accessories=(lookups)
    self.accessories.each{|c| c.destroy}
    lookups.each do |lookup|
      lookup, count = lookup[:lookup], lookup[:count]
      item = Item.find_by_lookup(lookup)
      next if item and item.id == self.id
      next if item and !item.accessory?
      self.accessories.build(:accessory_id=>item.id, :count=>count) if item
    end
  end
  ###################


  def company_name
    company.name if company
  end

  def country_name
    country.name if country
  end

  def category_name
    category.name if category
  end

  def company_country
    [country_name, company_name].compact.join(", ")
  end

  def lookup_value
    value = self.model || ""
    value += " (#{self.company_country})" unless self.company_country.empty?
    value += " Код: #{self.code}" unless self.code.blank?
    value += " Артикул: #{self.article}" unless self.article.blank?
    value.strip
  end
  def self.find_by_lookup(lookup)
    Item.all.detect{|i| i.lookup_value == lookup}
  end



  def clone_with_attachments
    new_clone = self.clone
    new_clone.save

    self.images.each do |img|
      img_clone = img.clone
      img_clone.save
      img_clone.update_attribute(:image_data, File.open(img.image_data.path))
      new_clone.images << img_clone
    end
    self.documents.each do |doc|
      doc_clone = doc.clone
      doc_clone.save
      doc_clone.update_attribute(:document, File.open(doc.document.path))
      new_clone.documents << doc_clone
    end

    self.standards.each {|s| new_clone.standards << s}
    self.items.each {|i| new_clone.items << i}
    self.accessories.each {|a| new_clone.accessories << a}

    new_clone.save
  end

  private
  def save_images
    unless pictures.blank?
      pictures.each do |picture|
        images.create(:image_data=>picture)
      end
    end
  end

  def save_documents
    documents.each do |document|
      document.save(false)
    end
  end
  
end
