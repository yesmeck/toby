# encoding: utf-8

require "spec_helper"

describe Toby::Request::Taobao::TaobaokeItemsCouponGet do
    include_context "initialize client"

    it "should return a taobaoke items coupon list" do
        request = Toby::Request.create("taobao.taobaoke.items.coupon.get")
        request.keyword = "天天特价"

        @client.stub(:request).and_return(fixture("taobao/taobaoke_items_coupon_get.json"))

        items = @client.execute(request)
        items.first.num_iid.should eq 20181879415
        items.total_results.should eq 75915
    end
end

