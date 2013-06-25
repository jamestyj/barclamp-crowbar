ENV["RAILS_ENV"] ||= ENV["RACK_ENV"]

# we need to protect against multiple includes of the Rails environment (trust me)
require File.dirname(__FILE__) + '/config/environment' if !defined?(Rails) || !Rails.initialized?
require 'sprockets'

use Rails::Rack::Static

# Assets are precompiled and served statically in production.
unless Rails.env.production?
  map '/assets' do
    sprockets = Sprockets.env
    run sprockets
  end
end

map '/' do
  run ActionController::Dispatcher.new
end
