require 'spec_helper'

describe Destiny::Advisors do
  let(:client) { Destiny::Client.new(test_destiny_api_token) }

  describe "#daily_report" do
    it "returns parsed JSON", :vcr do
      expect(client.daily_report).to be_a(Hash)
    end
  end

  describe "#activity_search" do
    context "when raw is true" do
      it "returns all of the data in parsed JSON", :vcr do
        expect(client.activity_search(1749151224, true)).to be_a(Hash)
      end
    end

    context "when raw is false" do
      it "returns the data in a parsed JSON object", :vcr do
        expect(client.activity_search(1749151224, false)).to be_a(Hash)
      end

      it "returns only the interesting keys", :vcr do
        expect(client.activity_search(1749151224, false).keys).to contain_exactly(:activityName, :activityDescription, :skulls)
      end
    end
  end

  describe "#nightfall" do
    context "when raw is false" do
      let(:response) { client.nightfall(false) }

      it "includes activeSkulls and specificActivity", :vcr do
        expect(response.keys).to include(:activeSkulls, :specificActivity)
      end
    end
  end
end
