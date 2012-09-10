# encoding: utf-8

require 'spec_helper'

module Toby
  module Request
    module Tmall
      class SelectedItemsSearch
        describe 'Tmall selected items search' do
          it 'should returns a tamll selected items list, when it is executed.' do
            client = Toby::Client.new
            request = Toby::Request::Tmall::SelectedItemsSearch.new

            request.cid = 0

            client.execute(request).should have_key(:item_list)
          end
        end
      end
    end
  end
end
