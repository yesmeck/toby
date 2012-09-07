module Toby
  module Request
    class ItemGet < Base
      API_METHOD_NAME = 'taobao.item.get'

      def fields=(fields)
        @fields = fields
        @api_paras[:fields] = @fields
      end

      def num_iid=(num_iid)
        @num_iid = num_iid
        @api_paras[:num_iid] = @num_iid
      end

      def get_api_method_name
      end

      def check
        Util::RequestCheck.check_not_null @fields, 'fields'
        Util::RequestCheck.check_not_null @num_iid, 'num_iid'
        Util::RequestCheck.check_min_value @num_iid, 1, 'num_iid'
      end
    end
  end
end
