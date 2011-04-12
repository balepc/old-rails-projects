class AddSeoToItems < ActiveRecord::Migration
  def self.up
    add_column :items, :seo_title, :string
    add_column :items, :seo_description, :text
    add_column :items, :seo_keywords, :string, :limit => 500
  end

  def self.down
    remove_column :items, :seo_title
    remove_column :items, :seo_description
    remove_column :items, :seo_keywords
  end
end
