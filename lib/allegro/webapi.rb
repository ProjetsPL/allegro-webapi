# frozen_string_literal: true

require 'allegro/webapi/version'
require 'allegro/webapi/auction'
require 'allegro/webapi/client'
require 'allegro/webapi/user'
require 'allegro/webapi/search'
require 'allegro/webapi/jurnal'
require 'allegro/webapi/utils'
require 'allegro/webapi/account'
require 'allegro/webapi/status'
require 'allegro/webapi/contractor'
require 'allegro/webapi/listing'
require 'yaml'

env_file = 'config/local_env.yml'
if File.exist?(env_file)
  YAML.safe_load(File.open(env_file)).each do |key, value|
    ENV[key] = value
  end
end

module Allegro
  module Webapi
    # Your code goes here...
  end
end
