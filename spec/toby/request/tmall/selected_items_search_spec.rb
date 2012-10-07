# encoding: utf-8

require "spec_helper"

describe Toby::Request::Tmall::SelectedItemsSearch do
  include_context "initialize client"

  it 'should returns a tamll selected items list.' do
    request = Toby::Request.create("tmall.selected.items.search")
    request.cid = 0

    @client.stub(:request).and_return(fixture("tmall/selected_items_search.json"))
    items = @client.execute(request)

    items.first.track_iid.should eq "13786459483_track_11116"
  end
end
