# encoding: utf-8

$: << '.'

require 'lib/toby'

describe "Item get" do
  it "should returns {item: {num_iid: 13364998803}}, when it is executed." do
    Toby.app_key = '12350568'
    Toby.secret_key = 'ebca8ce85d80e7c25d41f1d11fc308ab'

    client = Toby::Client.new
    request = Toby::Request::ItemGet.new

    request.num_iid = 13364998803
    request.fields = "num_iid"

    client.execute(request).should eq({item: {num_iid: 13364998803}})
  end
end
