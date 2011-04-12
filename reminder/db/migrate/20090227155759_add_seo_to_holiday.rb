class AddSeoToHoliday < ActiveRecord::Migration
  def self.up
    add_column :holidays, :seo_description, :text
    add_column :holidays, :seo_keywords, :text
  end

  def self.down
    remove_column :holidays, :seo_keywords
    remove_column :holidays, :seo_description
  end
end
