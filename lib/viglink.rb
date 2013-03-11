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

class String
  def to_bool
    return true if self == true || self =~ (/(true|t|yes|y|1)$/i)
    return false if self == false || self.blank? || self =~ (/(false|f|no|n|0)$/i)
    raise ArgumentError.new("invalid value for Boolean: \"#{self}\"")
  end
end

