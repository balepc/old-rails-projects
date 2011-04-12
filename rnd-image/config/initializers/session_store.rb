# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_random_page_session',
  :secret      => 'cd0c7b287c45bb5fb6528a0d6884119a7b551582d92a425972e6d571054ab884e1a892545c63bc96ece07f161ca39ba8f500706024505cff6e9e384e7c55b856'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
