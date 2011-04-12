class CreateFavoriteItems < ActiveRecord::Migration
  def self.up
    create_table :favorites, :options => 'ENGINE=InnoDB CHARSET=utf8' do |t|
      t.integer :user_id, :null => false
      t.integer :item_id, :null => false
    end
  end

  def self.down
    drop_table :favorites
  end
end
