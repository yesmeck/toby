module Toby
  module Request
    class Base
      def initialize
        @api_paras = {}
        @raw = false
      end

      def api_method_name
        self.class.to_s.sub('Toby::Request::', '').sub('::', '').split(/(?=[A-Z])/).join('.').downcase
      end

      def api_paras
        @api_paras
      end

      def raw=(raw)
        @raw = raw
      end

      def raw
        @raw
      end

      def fields=(fields)
        @fields = fields
        @api_paras[:fields] = @fields
      end

      def fields
        @fields
      end

      def response_key_path
        @response_key_path
      end
    end
  end
end
