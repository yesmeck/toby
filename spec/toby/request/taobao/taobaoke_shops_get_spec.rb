# encoding: utf-8

require "spec_helper"

describe Toby::Request::Taobao::TaobaokeShopsGet do
  include_context "initialize client"

  it "should return a taoboke shops list." do
    request = Toby::Request::Taobao::TaobaokeShopsGet.new
    request.keyword = "一米阳光官方旗舰店"

    @client.stub(:request).and_return(fixture("taobao/taobaoke_shops_get.json"))
    shops = @client.execute(request)

    shops.first.shop_title.should eq "一米阳光官方旗舰店"
  end
end
