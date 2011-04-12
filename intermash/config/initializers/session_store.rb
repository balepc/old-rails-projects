# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_avrora_session',
  :secret      => '7bb3be5e76086bdd12c99e165e9dcf51eb95fa7faa3fb5a82e4dbcc40a08e2d0d00fb16864e8e1de3295bd93b2e842b3292c67cbbf1b737e640194d133f4fde6'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
