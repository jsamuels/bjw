# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_bjw_session',
  :secret      => '1ac7c5341066306f4de70d4b9e1d272474be1e171a5521f5d63afb4f2c71712b62bea13c49408fab4151f792c0936bd8d37a1e6f310183c8d854eea3c80a4ccd'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
