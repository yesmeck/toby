module Toby
  module Request
    class Base
      def initialize
        @api_paras = {}
      end

      def api_method_name
        self.class::API_METHOD_NAME
      end

      def api_paras
        @api_paras
      end
    end
  end
end
