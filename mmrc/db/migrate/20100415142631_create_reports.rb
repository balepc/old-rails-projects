class CreateReports < ActiveRecord::Migration
  def self.up
    execute "CREATE TABLE reports
(
-- 	FIELD				TYPE					DESCRIPTION
-- 	------------------------------	--------------------------------------	------------------------------------------------------------------------------
	id				INT(11) NOT NULL AUTO_INCREMENT,	# System ID
	created_at			DATETIME DEFAULT NULL,			# System created time
	updated_at			DATETIME DEFAULT NULL,			# System updated time
	vessel_id			INT(11) NOT NULL,			# Vessel ID
	report_time 			DATETIME NOT NULL,			# Report time
	lv_arrival_port_id 		INT(11) NOT NULL,			# Call port of Latvia ID
	lv_arrival_port_eta 		DATETIME DEFAULT NULL,			# Estimated time of arrival to port of Latvia
	lv_departure_port_id		INT(11) NOT NULL,			# Departure port of Latvia ID
	lv_departure_port_etd		DATETIME DEFAULT NULL,			# Estimated time of departure from port of Latvia
	last_port_id 			INT(11) NOT NULL,			# Last port of call ID
	next_port_id 			INT(11) DEFAULT NULL,			# Next port ID
	cert_issue_authority 		VARCHAR(255) NOT NULL,			# Security certificate issuing authority
	cert_issue_dt 			DATETIME NOT NULL,			# Security certificate issue date
	cert_valid_dt 			DATETIME NOT NULL,			# Security certificate validity date
	curr_pos_latitude		FLOAT DEFAULT '0',			# Current position latitude
	curr_pos_latitude_direction	VARCHAR(1) DEFAULT NULL,		# Current position's latitude pole (N or S)
	curr_pos_longitude		FLOAT DEFAULT '0',			# Current position longitude
	curr_pos_longitude_direction	VARCHAR(1) DEFAULT NULL,		# Current position's longitude direction (E or W)
	entry_pos_latitude		FLOAT DEFAULT '0',			# Entry position latitude
	entry_pos_latitude_direction	VARCHAR(1) DEFAULT NULL,		# Entry position's latitude pole (N or S)
	entry_pos_longitude		FLOAT DEFAULT '0',			# Entry position longitude
	entry_pos_longitude_direction	VARCHAR(1) DEFAULT NULL,		# Entry position's longitude direction (E or W)
	is_pilot_requested		TINYINT(1) DEFAULT '0',			# Is pilot requested
	has_diseases			TINYINT(1) DEFAULT '0',			# Has contagious diseases
	fuel_onboard			INT DEFAULT '0',			# Amount of fuel on board
	fuel_onboard_mu			VARCHAR(10) DEFAULT NULL,		# Unit of measurement of fuel
	stowaways_onboard		TINYINT(1) DEFAULT '0',			# Stowaways on board
	curr_ship_sec_lvl		VARCHAR(30) DEFAULT NULL,		# Current ship security level
	berth_number			VARCHAR(30) DEFAULT NULL,		# Berth number
	next_agent			VARCHAR(150) DEFAULT NULL,		# Next agent name

	PRIMARY KEY (id)
);
"
  end

  def self.down
    drop_table :reports
  end
end
