require 'spec_helper'

describe Destiny::Vendors do
  let(:api_key) { 'd319ebf361e9f4f28e65fa05ce1cf8d6' }
  let(:client) { Destiny::Client.new(:api_key) }

  describe "#xur" do
    it "should return a JSON object containing this weekends items for sale" do
    end

    it "should return a falsey value if Xur is not in game" do
    end
  end

  describe "#vendor" do
    it "should return a JSON object containing vendor details" do
    end
  end

end
