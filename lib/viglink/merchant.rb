# encoding: utf-8

module Viglink
  module Merchant

    ##
    # Retrieve the list of Merchants
    #
    # @return [Hashie::Mash] Merchant
    def find_merchants(options={})
      options[:key] = @api_key
      merchants_response = get('/vigcatalog/merchants.xml', options)
      merchants_response.response if merchants_response.response
    end

    ##
    # Retrieve the list of MerchantTypes
    #
    # @return [Hashie::Mash] MerchantType
    def find_merchant_types
      options = {}
      options[:key] = @api_key
      merchant_types_response = get('/vigcatalog/merchant_types.xml', options)
      merchant_types_response.response if merchant_types_response.response
    end

  end
end
