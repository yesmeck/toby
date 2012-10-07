module Toby
  module Request
    class Base
      def initialize
        @api_params = {}
        @raw = false
      end

      def api_method_name
        self.class.to_s.sub('Toby::Request::', '').sub('::', '').split(/(?=[A-Z])/).join('.').downcase
      end

      def api_params
        @api_params
      end

      def raw=(raw)
        @raw = raw
      end

      def raw
        @raw
      end

      def fields=(fields)
        @fields = fields
        @api_params[:fields] = @fields
      end

      def fields
        @fields
      end

      def response_key_path
        @response_key_path
      end

      def method_missing(method_name, *args, &block)
        param = method_name.to_s.sub(/=$/, '').to_sym
        if @app_params.include?(param)
          if method_name.to_s =~ /=$/
            self.instance_variable_set("@#{param}", args.first)
            @api_params[param] = args.first
          else
            self.instance_variable_get("@#{param}")
          end
        end
      end
    end
  end
end
