# encoding: utf-8
require 'spec_helper'

describe Viglink::Merchant do

  let(:client) { Viglink::Client.new }

  describe "#find_merchants" do
    context "without search options" do
      it "returns a list of merchants", vcr: true do
        client.find_merchants.should be_kind_of Hash
      end
    end

    context "with search options" do
    end
  end

  describe "#find_merchant_types" do
    it "returns a list of merchant types", vcr: true do
      client.find_merchant_types.should be_kind_of Hash
    end
  end

end
