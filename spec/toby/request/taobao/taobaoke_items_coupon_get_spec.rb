# encoding: utf-8

require "spec_helper"

describe Toby::Request::Taobao::TaobaokeItemsCouponGet do
    include_context "initialize client"

    it "should return a taobaoke items coupon list" do
        request = Toby::Request.create("taobao.taobaoke.items.coupon.get")
        # 默认获取所有 fields
        TAOKE_FIELDS = "num_iid,seller_id,nick,title,price,item_location,seller_credit_score,click_url,shop_click_url,pic_url,taobaoke_cat_click_url,keyword_click_url,coupon_rate,coupon_price,coupon_start_time,coupon_end_time,commission_rate,commission,commission_num,commission_volume,volume,shop_type,promotion_price"
        request.fields = TAOKE_FIELDS
        request.keyword = "天天特价"

        @client.stub(:request).and_return(fixture("taobao/taobaoke_items_coupon_get.json"))

        items = @client.execute(request)
        items.first.num_iid.should eq 20181879415
        items.total_results.should eq 75915
    end
end

