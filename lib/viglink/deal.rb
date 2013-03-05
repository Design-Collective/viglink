# encoding: utf-8

module Viglink
  module Deal

    ##
    # Retrieve the list of Deals
    #
    # @return [Hashie::Mash] Deal
    def find_deals(options={})
      options[:key] = @api_key
      deals_response = get('/vigcatalog/deals.xml', options)
      deals_response.response if deals_response.response
    end

    ##
    # Retrieve the list of Deal Types
    #
    # @return [Hashie::Mash] DealType
    def find_deal_types
      options = {}
      options[:key] = @api_key
      deal_types_response = get('/vigcatalog/deal_types.xml', options)
      deal_types_response.response if deal_types_response.response
    end


  end
end
