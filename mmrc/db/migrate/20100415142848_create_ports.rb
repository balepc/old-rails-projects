class CreatePorts < ActiveRecord::Migration
  def self.up
    execute "CREATE TABLE ports
(
-- 	FIELD				TYPE					DESCRIPTION
-- 	------------------------------	--------------------------------------	------------------------------------------------------------------------------
	id				INT(11) NOT NULL AUTO_INCREMENT,	# System ID
	created_at			DATETIME DEFAULT NULL,			# System created time
	updated_at			DATETIME DEFAULT NULL,			# System updated time
	locode				VARCHAR(10) NOT NULL,			# Port's code
	description 			VARCHAR(255) DEFAULT NULL,		# Port's description

	PRIMARY KEY (id)
);"
  end

  def self.down
    drop_table :ports
  end
end
