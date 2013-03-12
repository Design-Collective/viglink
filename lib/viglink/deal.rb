# encoding: utf-8

module Viglink
  module Deal

    ##
    # Retrieve the list of Deals
    #
    # @param :full [Boolean] If set to true|y|yes then this will return 
    # the complete response
    #
    # @return [Hashie::Mash] Deal
    def find_deals(options={})
      full_response = options.delete(:full) if options[:full]
      options[:key] = @api_key
      deals_response = get('/vigcatalog/deals.xml', options)

      if full_response.to_s.to_bool or @api_full_response
        deals_response.response if deals_response.response
      else
        deals_response.response.results.deals if deals_response.response.results
      end

    end

    ##
    # Retrieve the list of Deal Types
    #
    # @param :full [Boolean] If set to true|y|yes then this will return 
    # the complete response
    #
    # @return [Hashie::Mash] DealType
    def find_deal_types(options = {})
      full_response = options.delete(:full) if options[:full]
      options[:key] = @api_key
      deal_types_response = get('/vigcatalog/deal_types.xml', options)

      if full_response.to_s.to_bool or @api_full_response
        deal_types_response.response if deal_types_response.response
      else
        deal_types_response.response.results.deal_types if deal_types_response.response.results
      end
    end


  end
end
