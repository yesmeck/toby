# encoding: utf-8

module Toby
  module Request
    module Taobao
      describe 'Taobaoke shops convert' do
        it "should return a taoboke shop" do
          client = Toby::Client.new
          request = Toby::Request::Taobao::TaobaokeShopsConvert.new

          request.seller_nicks = "jiezhixin8"

          client.execute(request).should have_key(:taobaoke_shops)
        end
      end
    end
  end
end
