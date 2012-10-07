module Toby
  module Request
    module Taobao
      class ItemGet < Base
        def initialize
          super
          @fields = 'detail_url,num_iid,title,nick,type,cid,seller_cids,props,input_pids,input_str,desc,pic_url,num,valid_thru,list_time,delist_time,stuff_status,location,price,post_fee,express_fee,ems_fee,has_discount,freight_payer,has_invoice,has_warranty,has_showcase,modified,increment,approve_status,postage_id,product_id,auction_point,property_alias,item_img,prop_img,sku,video,outer_id,is_virtual'
          @api_params[:fields] = @fields
          @response_key_path = "item"
          @app_params = [:num_iid]
        end
      end
    end
  end
end
