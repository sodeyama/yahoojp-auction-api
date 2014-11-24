require 'net/https'

module YahooJp
  class Request
    def self.get(path,opts,format="json")
      uri = URI.parse("#{path}?#{opts.map {|k,v|"#{k}=#{CGI.escape(v)}"}.join('&')}")
      YahooJp::Response.new(Net::HTTP.get_response(uri),format)
    end

    def self.get_with_auth(path,token,opts,format="json")
      uri = URI.parse("#{path}?#{opts.map {|k,v|"#{k}=#{CGI.escape(v)}"}.join('&')}")
      https = Net::HTTP.new(uri.host, 443)
      https.use_ssl = true
      https.verify_mode = OpenSSL::SSL::VERIFY_PEER
      https.verify_depth = 5
      req = Net::HTTP::Get.new(uri.request_uri, {'Authorization' => 'Bearer ' + token})
      https.start do
        response = https.request(req)
        YahooJp::Response.new(response,format)
      end
    end
  end
end
