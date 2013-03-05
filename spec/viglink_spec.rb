# encoding: utf-8
require 'spec_helper'

describe Viglink do

  let(:client) { Viglink::Client.new }

  it "configures with an API_KEY" do
    client.api_key.should eq 'your-api-key'
  end

  it "points to the REST API URL" do
    client.api_url.should eq 'http://api.viglink.com'
  end

end
