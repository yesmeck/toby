# encoding: utf-8

module Toby
  module Request
    module Taobao
      describe "Taobaoke shops get" do
        it "should return a taoboke shops list." do
          client = Toby::Client.new
          request = Toby::Request::Taobao::TaobaokeShopsGet.new

          request.keyword = "一米阳光官方旗舰店"

          client.execute(request).should have_key(:taobaoke_shops)
        end
      end
    end
  end
end
