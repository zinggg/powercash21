module Powercash21
  class Client
    require 'digest'
    attr_accessor :secret_key

    def initialize(secret_key: nil)
      @secret_key = secret_key || Powercash21.secret_key
    end

    def connection
    @connection ||= begin
      Faraday.new(:url => 'https://sandbox.powerpay21.com') do |faraday|
        faraday.request :url_encoded    
        faraday.adapter Faraday.default_adapter
      end
    end
    end

    def post(url, data = {})
      connection.post(url, data)
    end

    def get(url, data = {})
      connection.get(url, data)
    end

    private

    def format_data(data)
      sorted_hash = Hash[data.map{|k, v| [k.to_s.downcase, v]}.sort]
      signature = sorted_hash.map {|kay,val| val}.join("").to_s + @secret_key
      sorted_hash['signature'] = Digest::SHA1.hexdigest(signature)
    end
  end
end
