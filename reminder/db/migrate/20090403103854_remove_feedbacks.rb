class RemoveFeedbacks < ActiveRecord::Migration
  def self.up
    drop_table :feedbacks
  end

  def self.down
  end
end
