# encoding: utf-8

class Toby::Request::Taobao::TaobaokeItemsCouponGet < Toby::Request::Base
  def initialize
    super
    @fields = 'num_iid,title,nick,pic_url,price,click_url,commission,commission_rate,commission_num,commission_volume,shop_click_url,seller_credit_score,item_location,volume'
    @api_params[:fields] = @fields
    @response_key_path = "taobaoke_items.taobaoke_item"
    @request_params = [
      :fields, :nick, :pid, :outer_code, :keyword, :cid,
      :start_price, :end_price,:auto_send,:area,
      :start_credit,:end_credit,
      :sort,:guarantee, :start_commissionRate, :end_commissionRate,
      :start_commissionNum, :end_commissionNum,
      :start_totalnum,:end_totalnum,:cash_coupon,:vip_card,
      :overseas_item, :sevendays_return, :real_describe,
      :onemonth_repair, :cash_ondelivery, :mall_item,
      :page_no, :page_size, :is_mobile
    ]
  end
end
