class DocumentType < ActiveRecord::Base

  validates_presence_of :name

  has_many :documents, :dependent => :nullify

  has_attached_file :basedocument

  named_scope :base, :conditions=>["NOT basedocument_file_name IS NULL"]
  named_scope :custom, :conditions=>["basedocument_file_name IS NULL"]

  def base_document?
    !self.basedocument_file_name.blank?
  end

end