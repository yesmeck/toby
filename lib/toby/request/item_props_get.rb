module Toby
  module Request
    class ItemPropsGet < Base
      API_METHOD_NAME = 'taobao.itemprops.get'

      def initialize
        super
        @fields = 'pid,name,must,multi,prop_values'
        @api_paras[:fields] = @fields
      end

      def child_path=(child_path)
        @child_path = child_path
        @api_paras[:child_path] = @child_path
      end

      def child_path
        @child_path
      end

      def cid=(cid)
        @cid = cid
        @api_paras[:cid] = @cid
      end

      def cid
        @cid
      end

      def fields=(fields)
        @fields = fields
        @api_paras[:fields] = @fields
      end

      def fields
        @fields
      end

      def is_color_prop=(is_color_prop)
        @is_color_prop = is_color_prop
        @api_paras[:is_color_prop] = @is_color_prop
      end

      def is_color_prop
        @is_color_prop
      end

      def is_enum_prop=(is_enum_prop)
        @is_enum_prop = is_enum_prop
        @api_paras[:is_enum_prop] = @is_enum_prop
      end

      def is_enum_prop
        @is_enum_prop
      end

      def is_input_prop=(is_input_prop)
        @is_enum_prop = is_input_prop
        @api_paras[:is_input_prop] = @is_enum_prop
      end

      def is_input_prop
        @is_input_prop
      end

      def is_item_prop=(is_item_prop)
        @is_item_prop = is_item_prop
        @api_paras[:is_item_prop] = @is_item_prop
      end

      def is_item_prop
        @is_item_prop
      end

      def is_key_prop=(is_key_prop)
        @is_key_prop = is_key_prop
        @api_paras[:is_key_prop] = @is_key_prop
      end

      def is_key_prop
        @is_key_prop
      end

      def is_sale_prop=(is_sale_prop)
        @is_sale_prop = is_sale_prop
        @api_paras[:is_sale_prop] = @is_sale_prop
      end

      def is_sale_prop
        @is_sale_prop
      end

      def parent_id=(parent_id)
        @parent_id = parent_id
        @api_paras[:parent_id] = @parent_id
      end

      def parent_id
        @parent_id
      end

      def pid=(pid)
        @pid = pid
        @api_paras[:pid] = @pid
      end

      def pid
        @pid
      end
    end
  end
end
