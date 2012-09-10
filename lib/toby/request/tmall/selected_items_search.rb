# encoding: utf-8

module Toby
  module Request
    module Tmall
      class SelectedItemsSearch < Base
        def cid=(cid)
          @cid = cid
          @api_paras[:cid] = @cid
        end

        def cid
          @cid
        end
      end
    end
  end
end
