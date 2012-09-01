module Toby
  module Request
    class ItemGet
      def initialize
        @api_paras = {}
      end

      def fields=(fields)
        @fields = fields
        @api_paras[:fields] = @fields
      end

      def num_iid=(num_iid)
        @num_iid = num_iid
        @api_paras[:num_iid] = @num_iid
      end

      def get_api_method_name
        'taobao.item.get'
      end

      def get_api_paras
        @api_paras
      end

      def check
        Util::RequestCheck.check_not_null @fields, 'fields'
        Util::RequestCheck.check_not_null @num_iid, 'num_iid'
        Util::RequestCheck.check_min_value @num_iid, 1, 'num_iid'
      end
    end
  end
end

