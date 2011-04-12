class CreateTags < ActiveRecord::Migration
  def self.up
    create_table :tags, :options => 'ENGINE=InnoDB CHARSET=utf8' do |t|
      t.string :name, :null => false
      t.integer :style, :default => 0
      t.string :link, :null => false
    end
  end

  def self.down
    drop_table :tags
  end
end
