class CreateUserLogs < ActiveRecord::Migration
  def self.up
    create_table :user_logs, :options => 'ENGINE=InnoDB CHARSET=utf8' do |t|
      t.integer :user_id
      t.integer :action
      
      t.integer :item_id
      t.integer :tree_node_id

      t.timestamps
    end
  end

  def self.down
    drop_table :user_logs
  end
end
