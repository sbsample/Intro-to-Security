# Require config/environment.rb
require ::File.expand_path('../config/environment',  __FILE__)

set :app_file, __FILE__

# Remove built in Rack Protections
require 'rack/protection' 

configure do
 set :protection, false
end

run Sinatra::Application
