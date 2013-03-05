# encoding: utf-8

module Viglink
  module Product

    ##
    # Retrieve the list of Products
    #
    # @return [Hashie::Mash] Product
    def find_products(options={})
      options[:key] = @api_key
      response = get('/vigcatalog/products.xml', options)
      response
    end

  end
end
