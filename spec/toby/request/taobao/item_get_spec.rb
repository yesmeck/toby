# encoding: utf-8

describe Toby::Request::Taobao::ItemGet do
  include_context "initialize client"

  it "should return a item" do
    request = Toby::Request::Taobao::ItemGet.new
    request.num_iid = 13364998803

    @client.stub(:request).and_return(fixture("taobao/item_get.json"))
    item = @client.execute(request)

    item.title.should eq "正品开车防炫目司机墨镜太阳镜夜视镜偏光镜夹片钓鱼近视眼镜男女"
  end
end

