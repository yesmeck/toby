# encoding: utf-8

describe Toby::Request::Taobao::ItempropsGet do
  include_context "initialize client"

  it 'should returns item properties list' do
    request = Toby::Request::Taobao::ItempropsGet.new
    request.cid = 50012377

    @client.stub(:request).and_return(fixture("taobao/itemprops_get.json"))
    item_props = @client.execute(request)

    item_props.first.name.should eq "品牌"
  end
end
