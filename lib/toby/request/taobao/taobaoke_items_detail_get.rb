# encoding: utf-8

class Toby::Request::Taobao::TaobaokeItemsDetailGet < Toby::Request::Base
  def initialize
    super
    @fields = 'num_iid,nick,price,click_url,shop_click_url,seller_credit_score,location'
    @api_params[:fields] = @fields
    @response_key_path = "taobaoke_item_details.taobaoke_item_detail"
    @request_params = [
      :fields, :nick, :pid, :num_iids, :track_iids, :outer_code, :refer_type, :is_mobile
    ]
  end
end
