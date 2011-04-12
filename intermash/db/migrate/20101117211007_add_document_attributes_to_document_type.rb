class AddDocumentAttributesToDocumentType < ActiveRecord::Migration

  def self.up
    add_column :document_types, :basedocument_file_name, :string
    add_column :document_types, :basedocument_content_type, :string
    add_column :document_types, :basedocument_file_size, :integer
  end

  def self.down
  end
end
