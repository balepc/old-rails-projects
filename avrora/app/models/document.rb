class Document < ActiveRecord::Base

  belongs_to :item
  belongs_to :document_type

  has_attached_file :document

  validates_presence_of :document_file_name

  def hidden?
    document_type.hidden? if document_type
  end

end