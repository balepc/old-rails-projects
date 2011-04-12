class CreateDocuments < ActiveRecord::Migration
  def self.up
    create_table :documents do |t|
      t.integer   :document_type
      t.date      :valid_till
      t.integer   :item_id, :null=>false


      t.string   "document_file_name"
      t.string   "document_content_type"
      t.integer  "document_file_size"
      t.datetime "document_updated_at"
      t.timestamps
    end
  end

  def self.down
    drop_table :documents
  end
end
