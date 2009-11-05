# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_desert-code-camp_session',
  :secret      => '3f19cdcdf2b245cac2f1dad5ca1a3312d39d7753c91d42e68bf15bfcc40e865f581ffed1c381962c20d0dc43223ed4099640d2e5611f0922ad235defed4b9c73'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
