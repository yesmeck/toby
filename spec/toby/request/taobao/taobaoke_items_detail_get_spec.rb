# encoding: utf-8

require "spec_helper"

describe Toby::Request::Taobao::TaobaokeItemsDetailGet do
    include_context "initialize client"

    it "should return a taobaoke items detail info" do
        request = Toby::Request.create("taobao.taobaoke.items.detail.get")
        request.num_iids = "16231542746,22775120231"

        @client.stub(:request).and_return(fixture("taobao/taobaoke_items_detail_get.json"))

        items = @client.execute(request)
        items.first.item.num_iid.should eq 22775120231
        items.total_results.should eq 2
    end
end
