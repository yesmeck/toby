# encoding: utf-8
require 'spec_helper'

describe Toby::Request::Taobao::SellercatsListGet do
  include_context "initialize client"

  it "get the seller's cats list" do
    request = Toby::Request.create("taobao.sellercats.list.get")
    request.nick = '森马官方旗舰店'

    @client.stub(:request).and_return(fixture("taobao/sellercats_list_get.json"))
    cats = @client.execute(request)

    cats.first.name.should == '男装专区'
  end
end
