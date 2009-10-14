# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_madmimi_connector_session',
  :secret      => '237a3ace2ea811cbb83a3b75bea861142e0bd1e4c78bc30277fb285f458024c7388a76b845afe3eeb0b119307dc2eddfbf2e309cae314e090781c562b1990804'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
