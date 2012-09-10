# encoding: utf-8

require 'spec_helper'

module Toby
  module Requst
    module Taobao
      describe 'Item properties get' do
        it 'should returns item properties list' do
          client = Toby::Client.new
          request = Toby::Request::Taobao::ItempropsGet.new

          request.cid = 50012377

          client.execute(request).should have_key(:item_props)
        end
      end
    end
  end
end
