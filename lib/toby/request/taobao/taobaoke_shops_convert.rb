# encoding: utf-8

class Toby::Request::Taobao::TaobaokeShopsConvert < Toby::Request::Base
  def initialize
    super
    @fields = 'shop_id,seller_nick,user_id,shop_title,click_url,commission_rate,seller_credit,shop_type,total_auction,auction_count'
    @api_params[:fields] = @fields
    @response_key_path = "taobaoke_shops.taobaoke_shop"
    @request_params = [:fields, :sids, :seller_nicks, :nick, :pid, :outer_code, :is_mobile]
  end
end
