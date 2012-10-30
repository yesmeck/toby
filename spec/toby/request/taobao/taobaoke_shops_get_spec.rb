# encoding: utf-8

require "spec_helper"

describe Toby::Request::Taobao::TaobaokeShopsGet do
  include_context "initialize client"

  context "existent keyword" do
    it "should return a taoboke shops list." do
      request = Toby::Request.create("taobao.taobaoke.shops.get")
      request.keyword = "一米阳光官方旗舰店"

      @client.stub(:request).and_return(fixture("taobao/taobaoke_shops_get.json"))
      shops = @client.execute(request)

      shops.first.shop_title.should eq "一米阳光官方旗舰店"
      shops.total_results.should eq 1
    end
  end

  context "non-existent keyword" do
    it "should return a empty array." do
      request = Toby::Request.create("taobao.taobaoke.shops.get")
      request.keyword = "不存在"


      @client.stub(:request).and_return(fixture("taobao/taobaoke_shops_get_empty.json"))
      shops = @client.execute(request)

      shops.should be_empty
      shops.total_results.should == 0
    end
  end
end
