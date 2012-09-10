module Toby
  module Request
    module Taobao
      class ItemcatsGet < Base
        def initialize
          super
          @fields = 'cid,parent_cid,name,is_parent'
          @api_paras[:fields] = @fields
        end

        def cids=(cids)
          @cids = cids
          @api_paras[:cids] = @cids
        end

        def cids
          @cids
        end

        def fields=(fields)
          @fields = fields
          @api_paras[:fields] = @fields
        end

        def fields
          @fields
        end

        def parent_cid=(parent_cid)
          @parent_cid = parent_cid
          @api_paras[:parent_cid] = @parent_cid
        end

        def parent_cid
          @parent_cid
        end
      end
    end
  end
end
