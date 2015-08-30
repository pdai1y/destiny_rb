require 'spec_helper'

describe Destiny::Advisors do
  let(:api_key) { 'd319ebf361e9f4f28e65fa05ce1cf8d6' }
  let(:client) { Destiny::Client.new(:api_key) }

  describe "#advisors" do
    it "should return a JSON object containing activity hashes" do
      advisors = client.advisors
      expect
    end
  end

  describe "#activity" do
    it "should return a JSON object containing activity details if raw = false" do
    end

    it "should return a JSON object containing raw info from bungie" do
    end
  end

  describe "#nightfall" do
    it "should return a JSON object containing nightfall details" do
    end
  end

  describe "#weekly_strike" do
    it "should return a JSON object containing weekly strike details" do
    end
  end
  
end
