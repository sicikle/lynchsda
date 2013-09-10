# Be sure to restart your server when you modify this file.

Lynchsda::Application.config.session_store :cookie_store, :key => '_Lynchsda_session'

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rails generate session_migration")
Lynchsda::Application.config.session_store :active_record_store

# if Rails.env.production?
#   require 'action_dispatch/middleware/session/dalli_store'
#   Rails.application.config.session_store :dalli_store, :memcache_server => ['host1', 'host2'], :namespace => 'sessions', :key => '_foundation_session', :expire_after => 31.days
# end