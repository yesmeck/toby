# encoding: utf-8

require "toby"

shared_context "initialize client" do
  before do
    @app_key = "myfakeappkey"
    @secret_key = "myfakesecretkey"
    @client = Toby::Client.new(:app_key => @app_key, :secret_key => @secret_key)
  end
end

def fixture_path
  File.expand_path("../fixtures", __FILE__)
end

def fixture(file)
  contents = open(fixture_path + "/" + file).read
  JSON.parse(contents, { symbolize_name: true })
end
