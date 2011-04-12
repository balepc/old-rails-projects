class ChangeMemoDate < ActiveRecord::Migration
  def self.up
    change_column :memos, :memo_date, :date
  end

  def self.down
  end
end
