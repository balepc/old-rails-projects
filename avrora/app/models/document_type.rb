class DocumentType < ActiveRecord::Base

  validates_presence_of :name

  has_many :documents, :dependent => :nullify

end