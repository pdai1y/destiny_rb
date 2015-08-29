require_relative 'advisors'
require_relative 'vendors'
require_relative 'manifest'
require_relative 'manifest_definitions'
require_relative 'item_explorer'
# Destiny-rb module wrapper
module Destiny
  # Base API Class
  #
  # Usage:
  # destiny = DestinyAPI::Base.new(api_token)
  class Client
    # Include HTTParty Module
    include HTTParty
    # Format HTTP response automatically to JSON
    format :json
    # Set the base URI
    base_uri 'www.bungie.net/Platform/Destiny/'

    include Advisors
    include Vendors
    include Manifest
    include ManifestDefinitions
    include ItemExplorer

    # Init the Destiny API with Bungie API stored in ENV variable
    #
    # Usage:
    #   client = Destiny::Client.new('6971067dec36c6597cd57789a62f48f0')
    #
    # Arguments:
    #   api_token: (String)
    #
    # Returns:
    #   Destiny client object
    #
    def initialize(api_token)
      @headers = { 'X-API-Key' => api_token, 'Content-Type' => 'application/json' }
    end

  end
end
