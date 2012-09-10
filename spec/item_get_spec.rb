# encoding: utf-8

require 'spec_helper'

module Toby
  module Request
    module Taobao
      describe "Item get" do
        it "should returns a taobao item, when it is executed." do
          client = Toby::Client.new
          request = Toby::Request::Taobao::ItemGet.new

          request.num_iid = 13364998803

          client.execute(request).should have_key(:item)
        end
      end
    end
  end
end

