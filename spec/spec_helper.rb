$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
Bundler.require :default
require 'destiny_rb'
require 'dotenv'
require 'webmock/rspec'

Dotenv.load

RSpec.configure do |config|
  config.raise_errors_for_deprecations!
end

require 'vcr'
VCR.configure do |vcr|
  vcr.configure_rspec_metadata!

  vcr.filter_sensitive_data("<TEST_DESTINY_API_KEY>") do
    test_destiny_api_token
  end

  vcr.default_cassette_options = {
    serialize_with: :json,
    preserve_exact_body_bytes: true,
    record: ENV["TRAVIS"] ? :none : :once
  }

  vcr.cassette_library_dir = "spec/cassettes"
  vcr.hook_into :webmock
end

def test_destiny_api_token
  ENV.fetch("TEST_DESTINY_API_KEY", "abc123")
end
