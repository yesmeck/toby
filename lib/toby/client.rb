# encoding: utf-8

require 'digest/md5'
require 'uri'
require 'net/http'
require 'json'
require 'hashie'

module Toby

  API_VERSION = '2.0'
  SDK_VERSION = 'toby-0.0.1-dev'

  class Client
    def initialize(options = {})
      @gateway_url = 'http://gw.api.taobao.com/router/rest'
      @format = 'json'
      @sign_method = 'md5'
      @app_key = options[:app_key] if !options[:app_key].nil?
      @app_secret = options[:app_secret] if !options[:app_secret].nil?
    end

    def execute(request, session = nil)

      @request = request

      sys_params = {
        :app_key =>      @app_key,
        :v =>            Toby::API_VERSION,
        :format =>       @format,
        :sign_method =>  @sign_method,
        :method =>       @request.api_method_name,
        :timestamp =>    Time.new.strftime("%Y-%m-%d %H:%M:%S"),
        :partner_id =>   Toby::SDK_VERSION
      }

      api_params = @request.api_params.clone
      api_params.merge!(sys_params)
      api_params[:sign] = generate_sign(api_params)

      @response  = request(api_params)

      if !@response[:error_response].nil?
        raise @response[:error_response][:msg]
      end

      if @request.raw
        @response
      else
        if @request.respond_to?(:parse)
          @request.parse(@response)
        else
          parse
        end
      end
    end

    def request(api_params)
      uri = URI(@gateway_url)
      uri.query = URI.encode_www_form(api_params)
      response = Net::HTTP.get_response(uri)
      JSON.parse(response.body, {:symbolize_names => true})
    end

    protected

    def generate_sign(params)
      params_str = params.sort.inject('') do |str, item|
        str + item.first.to_s + item.last.to_s
      end
      str = @app_secret.to_s + params_str + @app_secret.to_s
      Digest::MD5.hexdigest(str).upcase
    end

    def parse
      response_key_path = @request.api_method_name.sub('taobao.', '').
        gsub('.', '_') + '_response' + "." +
        @request.response_key_path

      parsed_response = response_key_path.split(".").inject(@response) { |hash, key| hash[key.to_sym] }

      if parsed_response.kind_of?(Array)
        parsed_response.map! { |item| Hashie::Mash.new(item) }
        begin
          total_results_key_path = response_key_path.split(".").first + ".total_results"
          parsed_response.total_results = total_results_key_path.split(".").inject(@response) { |hash, key| hash[key.to_sym] }
        rescue
          # do nothing
        end
        parsed_response
      else
        Hashie::Mash.new(parsed_response)
      end
    end
  end
end
