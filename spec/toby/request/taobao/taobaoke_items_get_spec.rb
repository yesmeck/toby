# encoding: utf-8

require "spec_helper"

describe Toby::Request::Taobao::TaobaokeItemsGet do
    include_context "initialize client"

    it "should return a taobaoke istems list" do
        request = Toby::Request.create("taobao.taobaoke.items.get")
        request.cid = 50020808

        @client.stub(:request).and_return(fixture("taobao/taobaoke_items_get.json"))

        items = @client.execute(request)
        items.first.num_iid.should eq 18083496676
        items.total_results.should eq 3703416
    end
end
