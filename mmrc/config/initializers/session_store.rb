# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_mmrc_session',
  :secret      => 'af5a568278674f5f29b698d2ff04cef7805553d71cbad3edf3ba5db3f971ae189a842ea88b70430642de567d1df0a434531f5baed8e85f472fac340e850692fd'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
