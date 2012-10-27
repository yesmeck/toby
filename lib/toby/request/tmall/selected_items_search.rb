# encoding: utf-8

class Toby::Request::Tmall::SelectedItemsSearch < Toby::Request::Base
  def initialize
    super
    @response_key_path = "item_list.selected_item"
    @request_params = [:cid]
  end
end
