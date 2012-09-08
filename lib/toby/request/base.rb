module Toby
  module Request
    class Base
      def initialize
        @api_paras = {}
      end

      def api_method_name
        self.class.to_s.sub('Toby::Request::', '').sub('::', '').split(/(?=[A-Z])/).join('.').downcase
      end

      def api_paras
        @api_paras
      end
    end
  end
end
