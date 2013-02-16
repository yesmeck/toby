# encoding: utf-8

class Toby::Request::Taobao::SellercatsListGet < Toby::Request::Base
  def initialize
    super
    @fields = 'pid,name,must,multi,prop_values'
    @api_params[:fields] = @fields
    @response_key_path = "seller_cats.seller_cat"
    @request_params = [:nick]
  end
end
