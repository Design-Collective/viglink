# encoding: utf-8

module Viglink
  module Product

    ##
    # Retrieve the list of Products
    #
    # @return [Hashie::Mash] Product
    def find_products(options={})
      options[:key] = @api_key
      products_response = get('/vigcatalog/products.xml', options)
      products_response.response if products_response.response
    end

  end
end
