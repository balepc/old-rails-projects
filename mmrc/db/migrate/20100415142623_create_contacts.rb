class CreateContacts < ActiveRecord::Migration
  def self.up
    execute "CREATE TABLE contacts
(
-- 	FIELD				TYPE					DESCRIPTION
-- 	------------------------------	--------------------------------------	------------------------------------------------------------------------------
	id				INT(11) NOT NULL AUTO_INCREMENT,	# System ID
	created_at			DATETIME DEFAULT NULL,			# System created time
	updated_at			DATETIME DEFAULT NULL,			# System updated time
	last_name			VARCHAR(100) NOT NULL,			# Contact's last name
	first_name 			VARCHAR(100) NOT NULL,			# Contact's first name
	middle_name 			VARCHAR(100) DEFAULT NULL,		# Contact's middle name
	full_name 			VARCHAR(300) NOT NULL,			# Contact's full name
	sex 				VARCHAR(10) DEFAULT NULL,		# Contact's gender
	birth_date			DATETIME DEFAULT NULL,			# Contact's birth date
	email 				VARCHAR(100) DEFAULT NULL,		# Contact's email
	address 			VARCHAR(300) DEFAULT NULL,		# Contact's address
	phone_number 			VARCHAR(30) DEFAULT NULL,		# Contact's generic phone number
	nationality 			VARCHAR(10) DEFAULT NULL,		# Contact's nationality

	PRIMARY KEY (id)
);
"
  end

  def self.down
    drop_table :contacts
  end
end
