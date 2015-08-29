require 'spec_helper'

describe Destiny::Client do
  let(:api_key) { 'd319ebf361e9f4f28e65fa05ce1cf8d6' }
  let(:client) { Destiny::Client.new(:api_key) }

  it "should return a client object" do
    expect(client).not_to eql(nil)
  end
end
