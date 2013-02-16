# encoding: utf-8

module Toby
  API_VERSION = '2.0'
end

require "toby/client"
require "toby/request"
require "toby/request/base"
require "toby/request/taobao"
require "toby/request/tmall"
require "toby/request/taobao/item_get"
require "toby/request/taobao/itemprops_get"
require "toby/request/taobao/itemcats_get"
require "toby/request/taobao/sellercats_list_get"
require "toby/request/taobao/taobaoke_shops_convert"
require "toby/request/taobao/taobaoke_shops_get"
require "toby/request/taobao/taobaoke_items_get"
require "toby/request/tmall/selected_items_search"

