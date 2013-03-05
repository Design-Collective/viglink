# encoding: utf-8
require 'forwardable'
require 'viglink/request'
require 'viglink/product'

module Viglink
  class Client
    extend Forwardable

    include Request
    include Product

    attr_reader :api_key, :api_url

    ##
    # Create a new Viglink::Client object
    #
    # @params options [Hash]
    def initialize(options={})
      @api_key = options[:api_key] || Viglink.api_key
      @api_url = options[:api_url] || Viglink.api_url
    end

    ##
    # Create a Faraday::Connection object
    #
    # @return [Faraday::Connection]
    def connection
      params = {}
      @connection = Faraday.new(url: api_url, params: params, headers: default_headers) do |faraday|
        faraday.use FaradayMiddleware::Mashify
        faraday.use FaradayMiddleware::ParseXml, content_type: /\bxml$/
        faraday.adapter Faraday.default_adapter
      end
    end

    private

    def default_headers
      headers = {
        accept: '*/*',
        content_type: 'text/xml',
        user_agent: "Ruby Gem #{Viglink::VERSION}"
      }
    end

  end
end
