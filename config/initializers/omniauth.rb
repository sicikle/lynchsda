require 'omniauth-openid'
require 'openid'
require 'openid/store/filesystem'
require 'gapps_openid'
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :open_id, :name => 'faculty', :identifier => 'https://www.google.com/accounts/o8/site-xrds?hd=sdaschooleux.org'
end