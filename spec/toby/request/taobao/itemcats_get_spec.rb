# encoding: utf-8

require 'spec_helper'

module Toby
  module Request
    module Taobao
      describe 'Item cats get' do
        it 'should returns a taobao item cats list, when it is executed.' do
          client = Toby::Client.new
          request = Toby::Request::Taobao::ItemcatsGet.new

          request.parent_cid = 0

          client.execute(request).should have_key(:item_cats)
        end
      end
    end
  end
end
