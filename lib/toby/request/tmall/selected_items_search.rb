# encoding: utf-8

module Toby
  module Request
    module Tmall
      class SelectedItemsSearch < Base
        def initialize
          super
          @response_key_path = "item_list.selected_item"
          @request_params = [:cid]
        end
      end
    end
  end
end
