require 'digest/md5'
require 'uri'
require 'net/http'
require 'json'

module Toby

  API_VERSION = '2.0'
  SDK_VERSION = 'toby-0.0.1-dev'

  class << self
    attr_accessor :app_key, :secret_key
  end

  class Client
    def initialize
      @gateway_url = 'http://gw.api.taobao.com/router/rest'
      @format = 'json'
      @sign_method = 'md5'
    end

    def execute(request, session = nil)

      @request = request

      sys_params = {
        app_key:      Toby.app_key,
        v:            Toby::API_VERSION,
        format:       @format,
        sign_method:  @sign_method,
        method:       @request.api_method_name,
        timestamp:    Time.new.strftime("%Y-%m-%d %H:%M:%S"),
        partner_id:   Toby::SDK_VERSION
      }

      api_params = @request.api_paras
      api_params.merge!(sys_params)
      api_params[:sign] = generate_sign(api_params)

      @response  = request(api_params)

      parse
    end

    def request(api_params)
      uri = URI(@gateway_url)
      uri.query = URI.encode_www_form(api_params)
      Net::HTTP.get_response(uri)
    end

    protected

    def generate_sign(params)
      params_str = params.sort.inject('') do |str, item|
        str + item.first.to_s + item.last.to_s
      end
      str = Toby.secret_key.to_s + params_str + Toby.secret_key.to_s
      Digest::MD5.hexdigest(str).upcase
    end

    def parse
      body = JSON.parse(@response.body, {symbolize_names: true})
      response_key = @request.api_method_name.sub('taobao.', '').sub('.', '_') + '_response'
      body[response_key.to_sym]
    end
  end
end
