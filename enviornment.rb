# require all of our files so they can talk to eachother

require 'bundler'
Bundler.require # require all gems listed in the gem file

require_relative "./lib/api"
require_relative "./lib/cli"
require_relative "./lib/breweries"