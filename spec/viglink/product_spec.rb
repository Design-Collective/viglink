# encoding: utf-8
require 'spec_helper'

describe Viglink::Product do

  let(:client) { Viglink::Client.new }

  describe "#find_products" do

    context "without search options" do
      it "returns a list of products", vcr: true do
        client.find_products.should be_kind_of Hash
      end
    end

    context "with search options" do
    end

  end

end
