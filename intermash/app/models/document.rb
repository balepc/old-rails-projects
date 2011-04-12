class Document < ActiveRecord::Base

  belongs_to :item
  belongs_to :document_type

  has_attached_file :document

  validates_presence_of :document_file_name, :unless => :base_document_type?

  named_scope :base, :conditions=>["document_file_name IS NULL"]
  named_scope :custom, :conditions=>["NOT document_file_name IS NULL"]

  def common_name
    base_document_type? ?
      document_type.basedocument_file_name :
      document_file_name
  end

  def hidden?
    document_type.hidden? if document_type
  end

  def base_document_type?
    document_type.base_document?
  end

  def base_document_valid_till
    document_type.valid_till if document_type
  end

end