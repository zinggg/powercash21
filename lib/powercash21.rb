require "powercash21/version"
require 'faraday'
require 'faraday_middleware'
require 'json'

require "powercash21/client"

module Powercash21
  class Error < StandardError; end
  class << self
    attr_accessor :secret_key
  end

  self.secret_key ||= ENV['POWERCASH21_SECRET_KEY']
end
