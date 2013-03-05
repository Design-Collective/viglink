require "faraday"
require "faraday_middleware"
require "viglink/version"
require "viglink/client"

directory = File.expand_path(File.dirname(__FILE__))

module Viglink

  class << self
    attr_accessor :api_url, :api_key

    ##
    # Configure default credentials
    #
    # @yield [Viglink]
    def configure
      load_defaults
      yield self
      true
    end

    private

    def load_defaults
      self.api_url ||= 'http://catalog.viglink.com'
    end

  end

end
