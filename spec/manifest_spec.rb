require 'spec_helper'

describe Destiny::Manifest do

  let(:api_key) { 'd319ebf361e9f4f28e65fa05ce1cf8d6' }
  let(:client) { Destiny::Client.new(:api_key) }

  describe "#search_destiny_player" do
    it "should return a string containing a requested players bungie membership ID" do
    end
  end

  describe "#get_destiny_account" do
    it "should return a JSON object containing all information related to a players Destiny account" do
    end
  end

  describe "#get_manifest_item" do
    it "should return a JSON object with information related to a singular game item" do
    end
  end

  describe "#place" do
    it "should return a JSON object containing place details" do
    end
  end

  describe "#destination" do
    it "should return a JSON object containing destination details" do
    end
end
