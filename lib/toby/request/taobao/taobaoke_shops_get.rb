# encoding: utf-8

module Toby
  module Request
    module Taobao
      class TaobaokeShopsGet < Base
        def initialize
          super
          @fields = 'shop_id,seller_nick,user_id,shop_title,click_url,commission_rate,seller_credit,shop_type,total_auction,auction_count'
          @api_paras[:fields] = @fields
          @response_key_path = "taobaoke_shops.taobaoke_shop"
          @app_params = [
            :fields, :nick, :pid, :outer_code, :keyword, :cid, :start_credit,
            :end_credit, :start_commissionrate, :end_comissionrate,
            :start_auction_count, :end_auctioncount, :start_totalaction,
            :end_totalaction, :only_mall, :sort_field, :sort_type, :is_mobile,
            :page_no, :page_size
          ]
        end
      end
    end
  end
end
