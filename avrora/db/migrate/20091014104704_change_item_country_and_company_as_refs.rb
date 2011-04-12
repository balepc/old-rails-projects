class ChangeItemCountryAndCompanyAsRefs < ActiveRecord::Migration
  def self.up
    remove_column :items, :country_id
    add_column :items, :country_id, :integer
    remove_column :items, :company_id
    add_column :items, :company_id, :integer
  end

  def self.down
    remove_column :items, :country_id
    add_column :items, :country_id, :string
    remove_column :items, :company_id
    add_column :items, :company_id, :string
  end
end
