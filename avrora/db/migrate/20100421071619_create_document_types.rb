class CreateDocumentTypes < ActiveRecord::Migration
  def self.up
    rename_column(:documents, :document_type, :document_type_id)

    create_table :document_types do |t|
      t.string :name
      t.boolean :hidden, :default=>false

      t.timestamps
    end


    DocumentType.create(:name=>'Техническое описание')
    DocumentType.create(:name=>'Гигиенический сертификат')
    DocumentType.create(:name=>'Сертификат')
    DocumentType.create(:name=>'Отказное письмо')
    DocumentType.create(:name=>'Другие документы')
  end

  def self.down
    drop_table :document_types
  end
end
