# encoding: utf-8
require 'spec_helper'

describe Viglink::Deal do

  let(:client) { Viglink::Client.new }

  describe "#find_deals" do
    context "without search options" do
      it "returns a list of deals", vcr: true do
        client.find_deals.should be_kind_of Hash
      end
    end

    context "with search options" do
    end
  end

  describe "#find_deal_types" do
    it "returns a list of deal types", vcr: true do
      client.find_deal_types.should be_kind_of Hash
    end
  end

end
