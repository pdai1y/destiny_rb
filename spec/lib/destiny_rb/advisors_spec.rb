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
      let(:response) { client.activity_search(1749151224, true) }

      it "returns all of the data in parsed JSON", :vcr do
        expect(response).to be_a(Hash)
      end
    end

    context "when raw is false" do
      let(:response) { client.activity_search(1749151224, false) }
      it "returns the data in a parsed JSON object", :vcr do
        expect(response).to be_a(Hash)
      end

      it "returns only the interesting keys", :vcr do
        expect(response.keys).to contain_exactly(:activityName, :activityDescription, :pgcrImage, :skulls)
      end

      it "has a jpg", :vcr do
        expect(response[:pgcrImage]).to include('jpg')
      end
    end
  end

  describe "#nightfall" do
    context "when raw is false" do
      let(:response) { client.nightfall(false) }

      it "includes activeSkulls and specificActivity and pgcrImage", :vcr do
        expect(response.keys).to include(:activeSkulls, :specificActivity, :pgcrImage)
      end

      it "has a jpg", :vcr do
        expect(response[:pgcrImage]).to include('jpg')
      end

      it "has hashes of skulls", :vcr do 
        expect(response[:activeSkulls].first).to be_a(Hash)
      end

      context "when skulls are present" do
        let(:skull) { response[:activeSkulls].first }

        it "should have name and details and icon", :vcr do
          expect(skull.keys).to contain_exactly(:name, :description, :icon)
        end

        it "should have an icon", :vcr do
          expect(skull[:icon]).to include('png')
        end

        it "should have a name", :vcr do
          expect(skull[:icon]).to be_a(String)
        end

        it "should have a description", :vcr do
          expect(skull[:icon]).to be_a(String)
        end
      end
    end

    context "when raw is true" do
      let(:response) { client.nightfall(true) }

      it "returns all of the data in a parsed JSON", :vcr do 
        expect(response).to be_a(Hash)
      end
    end
  end

  describe "weekly_strike" do
    context "when raw is false" do 
      let (:response) { client.weekly_strike(false)}

      it "returns the data in a parsed JSON object", :vcr do
        expect(response).to be_a(Hash)
      end

      it "has a jpg", :vcr do
        expect(response[:pgcrImage]).to include('jpg')
      end
    end

    context "when raw is true" do 
      let (:response) { client.weekly_strike(true)}

      it "returns the data in a parsed JSON object", :vcr do
        expect(response).to be_a(Hash)
      end
    end
  end
end
