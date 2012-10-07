# encoding: utf-8

module Toby
  module Request
    module Taobao
      class TaobaokeShopsConvert < Base
        def initialize
          super
          @fields = 'shop_id,seller_nick,user_id,shop_title,click_url,commission_rate,seller_credit,shop_type,total_auction,auction_count'
          @api_paras[:fields] = @fields
        end

        def seller_nicks=(seller_nicks)
          @seller_nicks = seller_nicks
          @api_paras[:seller_nikcs] = @seller_nicks
        end

        def seller_nicks
          @seller_nicks
        end

        def nick=(nick)
          @nick = nick
          @api_paras[:nick] = @nick
        end

        def nick
          @nick
        end

        def outer_code=(outer_code)
          @outer_code = outer_code
          @api_paras[:outer_code] = @outer_code
        end

        def outer_code
          @outer_code
        end

        def pid=(pid)
          @pid = pid
          @api_paras[:pid] = @pid
        end

        def pid
          @pid
        end

        def sids=(sids)
          @sids = sids
          @api_paras[:sids] = @sids
        end

        def sids
          @sids
        end
      end
    end
  end
end
