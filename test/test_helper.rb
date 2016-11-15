ENV['RACK_ENV'] = 'test'
require 'minitest/autorun'
require 'rack/test'
require 'vcr'

require_relative '../app'
require_relative '../lib/acme_client_registration'
require_relative '../lib/cloudflare_challenge'


VCR.configure do |config|
  config.cassette_library_dir = "test/fixtures/vcr_cassettes"
  config.hook_into :webmock
end
