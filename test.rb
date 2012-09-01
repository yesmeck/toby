$: << '.'
require 'lib/toby'

Toby.app_key = '12350568'
Toby.secret_key = 'ebca8ce85d80e7c25d41f1d11fc308ab'

client = Toby::Client.new
request = Toby::Request::ItemGet.new
p request
request.num_iid = 13364998803
request.fields = "detail_url,num_iid,title,nick,type,cid,seller_cids,props,input_pids,input_str,desc,pic_url,num,valid_thru,list_time,delist_time,stuff_status,location,price,post_fee,express_fee,ems_fee,has_discount,freight_payer,has_invoice,has_warranty,has_showcase,modified,increment,approve_status,postage_id,product_id,auction_point,property_alias,item_img,prop_img,sku,video,outer_id,is_virtual"

respone = client.execute(request)

p respone


