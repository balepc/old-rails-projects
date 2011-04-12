class AdjustHolidayModel < ActiveRecord::Migration
  def self.up
    remove_column :holidays, :image
    
    add_column :holidays, :filename, :string
    add_column :holidays, :content_type, :string
  end

  def self.down
    add_column :holidays, :image
    
    remove_column :holidays, :filename
    remove_column :holidays, :content_type
  end
end
