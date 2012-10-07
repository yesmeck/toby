module Toby
  module Request
    module Taobao
      class ItemcatsGet < Base
        def initialize
          super
          @fields = 'cid,parent_cid,name,is_parent'
          @api_paras[:fields] = @fields
          @response_key_path = "item_cats.item_cat"
          @app_params = [:fields, :cids, :parent_cid]
        end
      end
    end
  end
end
