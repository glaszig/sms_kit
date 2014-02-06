require 'faraday'

module SmsKit
  module HTTP

    def uri
      @uri ||= URI.parse _provider_api_url
    end

    def post data
      connection.post uri.path, data
    end

    def get data
      connection.get uri.path, data
    end

    def connection
      @conn ||= Faraday.new "#{uri.scheme}://#{uri.host}" do |f|
        f.headers[:user_agent] = "SmsKit #{VERSION}"
      end
    end

  end
end