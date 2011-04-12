class AddImageToHoliday < ActiveRecord::Migration
  def self.up
    add_column :holidays, :image, :string
  end

  def self.down
    remove_column :holidays, :image
  end
end
