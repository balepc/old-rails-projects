class CreateCrews < ActiveRecord::Migration
  def self.up
    execute "CREATE TABLE crew
(
-- 	FIELD				TYPE					DESCRIPTION
-- 	------------------------------	--------------------------------------	------------------------------------------------------------------------------
	id				INT(11) NOT NULL AUTO_INCREMENT,	# System ID
	created_at			DATETIME DEFAULT NULL,			# System created time
	updated_at			DATETIME DEFAULT NULL,			# System updated time
	contact_id			INT(11) DEFAULT NULL,			# Contact ID
	report_id 			INT(11) DEFAULT NULL,			# Report ID
	id_number 			VARCHAR(15) DEFAULT NULL,		# ID-number (? not sure about type and length; is it contact's property)
	rank	 			VARCHAR(30) DEFAULT NULL,		# Crew rank (? not sure about length and description)

	PRIMARY KEY (id)
);"
  end

  def self.down
    drop_table :crews
  end
end
