# encoding: utf-8

require "toby"

shared_context "initialize client" do
  before do
    @app_key = "myfakeappkey"
    @app_secret = "myfakeappsecret"
    @client = Toby::Client.new(:app_key => @app_key, :app_secret => @app_secret)
  end
end

def fixture_path
  File.expand_path("../fixtures", __FILE__)
end

def fixture(file)
  contents = open(fixture_path + "/" + file).read
  JSON.parse(contents, { symbolize_names: true })
end
