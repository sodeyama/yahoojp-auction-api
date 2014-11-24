# coding: utf-8

require "net/http"
require "uri"
require "cgi"
require "json"
require "yahoojp/api/request"
require "yahoojp/api/response"
require "yahoojp/api/auction"

module YahooJp
  module Api
    @@options = {}

    class << self
      def options
        @@options
      end

      def configure(&proc)
        raise ArgumentError, "Block is required." unless block_given?
        yield @@options
      end
    end
  end
end
