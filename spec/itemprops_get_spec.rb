# encoding: utf-8

require 'toby'

module Toby
  module Requst
    module Taobao
      describe 'Item properties get' do
        it 'should returns item properties list' do
          Toby.app_key = '12350568'
          Toby.secret_key = 'ebca8ce85d80e7c25d41f1d11fc308ab'

          client = Toby::Client.new
          request = Toby::Request::Taobao::ItempropsGet.new

          request.cid = 50012377

          client.execute(request).should have_key(:item_props)
        end
      end
    end
  end
end
