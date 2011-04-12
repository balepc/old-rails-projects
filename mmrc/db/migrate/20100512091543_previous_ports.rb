class PreviousPorts < ActiveRecord::Migration
  def self.up
    create_table :previous_ports, :id=>false do |t|
      t.references :report
      t.references :port
    end
  end

  def self.down
    drop_table :previous_ports
  end
end
