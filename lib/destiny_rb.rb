require 'httparty'
require 'destiny_rb/version'
require 'destiny_rb/client'
require 'destiny_rb/advisors'
require 'destiny_rb/vendors'
require 'destiny_rb/manifest'
require 'destiny_rb/manifest_definitions'
require 'destiny_rb/item_explorer'

module Destiny
  def self.new(options={})
    Destiny::Client.new(options)
  end
end
