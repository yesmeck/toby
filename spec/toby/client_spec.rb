# encoding: utf-8

require "spec_helper"

describe Toby::Client do
  include_context "initialize client"

  describe ".generate_sign" do
    it "should return a sign" do
      params = {
        :fields => "cid,parent_cid,name,is_parent",
        :parent_cid => 0,
        :app_key => "myfakeappkey",
        :v => "2.0",
        :format => "json",
        :sign_method => "md5",
        :method => "taobao.itemcats.get",
        :timestamp => "2012-10-28 05:09:40",
        :partner_id => "toby-0.0.3"
      }
      @client.generate_sign(params).should eq "EBB959B115A1F1EBC9D57028B8DE6D92"
    end
  end
end
