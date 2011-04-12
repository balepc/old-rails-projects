class CreateVessels < ActiveRecord::Migration
  def self.up
#    execute "CREATE TABLE vessels
#(
#-- 	FIELD				TYPE					DESCRIPTION
#-- 	------------------------------	--------------------------------------	------------------------------------------------------------------------------
#	id				INT(11) NOT NULL AUTO_INCREMENT,	# System ID
#	created_at			DATETIME DEFAULT NULL,			# System created time
#	updated_at			DATETIME DEFAULT NULL,			# System updated time
#	mmsi 				INT(9) NOT NULL,			# Maritime Mobile Service Identity
#	imon 				INT(7) NOT NULL,			# IMO number
#	call_sign 			VARCHAR(10) NOT NULL,			# Unique designation for a transmitting station
#	ship_name 			VARCHAR(255) NOT NULL,			# Ship's name
#	ship_flag 			VARCHAR(60) NOT NULL,			# Ship's flag
#	ship_type 			VARCHAR(60) DEFAULT NULL,		# Ship's type
#	ship_classification 		VARCHAR(120) DEFAULT NULL,		# Ship's classification
#	ship_phone 			VARCHAR(30) DEFAULT NULL,		# Ship's mobile phone
#	ship_fax 			VARCHAR(30) DEFAULT NULL,		# Ship's fax
#	ship_email 			VARCHAR(100) DEFAULT NULL,		# Ship's email
#	owner_id 			INT(11) NOT NULL,			# Owner contact ID
#	manager_id 			INT(11) NOT NULL,			# Manager contact ID
#	inmarsat_c 			VARCHAR(20) DEFAULT NULL,		# Inmarsat C hardware serial number (? not sure about description and length)
#	inmarsat_number			VARCHAR(20) DEFAULT NULL,  		# Inmarsat mobile number (? not sure about description and length)
#	other_communication 		VARCHAR(512) DEFAULT NULL,		# Other communication information
#	certificate_of_registry 	VARCHAR(20) DEFAULT NULL,		# Certificate number (? not sure about description and length)
#	cap_fo 				INT DEFAULT '0',			# Bunker capacity parameter - FO
#	cap_dodg 			INT DEFAULT '0',			# Bunker capacity parameter - DO/DG
#	cap_lo 				INT DEFAULT '0',			# Bunker capacity parameter - LO
#	cap_fw 				INT DEFAULT '0',			# Bunker capacity parameter - FW
#	dim_length 			INT DEFAULT '0',			# Dimension parameter - ship's length
#	dim_loa 			INT DEFAULT '0',			# Dimension parameter - LOA (length overall)
#	dim_dwt 			INT DEFAULT '0',			# Dimension parameter - DWT (deadweight)
#	dim_sbt 			INT DEFAULT '0',			# Dimension parameter - SBT (segregated ballast tanks)
#	dim_draft 			INT DEFAULT '0',			# Dimension parameter - max draft
#	dim_grt 			INT DEFAULT '0',			# Dimension parameter - GRT (gross register tonnage)
#	dim_nrt 			INT DEFAULT '0',			# Dimension parameter - NRT (net register tonnage)
#	dim_beam 			INT DEFAULT '0',			# Dimension parameter - beam
#	dim_dm 				INT DEFAULT '0',			# Dimension parameter - (? not sure about description)
#	dra_fwd 			INT DEFAULT '0',			# Draught parameter - FWD
#	dra_aft 			INT DEFAULT '0',			# Draught parameter - AFT
#	dra_max 			INT DEFAULT '0',			# Draught parameter - MAX
#	engine_power 			INT DEFAULT '0',			# Other parameter - engine power
#	gross_tonnage 			INT DEFAULT '0',			# Other parameter - gross tonnage (? probably the same as dim_grt or dim_nrt)
#	ice_class 			INT DEFAULT '0',			# Other parameter - ice2 class
#
#	PRIMARY KEY (id)
#);
#    "

  

  end

  def self.down    
  end

  

end
