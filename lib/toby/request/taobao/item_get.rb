module Toby
  module Request
    module Taobao
      class ItemGet < Base
        def initialize
          super
          p self.class
          @fields = 'detail_url,num_iid,title,nick,type,cid,seller_cids,props,input_pids,input_str,desc,pic_url,num,valid_thru,list_time,delist_time,stuff_status,location,price,post_fee,express_fee,ems_fee,has_discount,freight_payer,has_invoice,has_warranty,has_showcase,modified,increment,approve_status,postage_id,product_id,auction_point,property_alias,item_img,prop_img,sku,video,outer_id,is_virtual'
          @api_paras[:fields] = @fields
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
        end

        def check
          Util::RequestCheck.check_not_null @fields, 'fields'
          Util::RequestCheck.check_not_null @num_iid, 'num_iid'
          Util::RequestCheck.check_min_value @num_iid, 1, 'num_iid'
        end
      end
    end
  end
end
