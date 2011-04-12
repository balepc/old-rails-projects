class CreatePossesors < ActiveRecord::Migration
  def self.up
    create_table :possesors do |t|
      t.string :name, :limit=>100
      t.string :email, :limit=>50
      t.string :phone_number, :limit=>20
    end
  end

  def self.down
    drop_table :possesors
  end
end
