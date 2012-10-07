# encoding: utf-8

module Toby
  module Request
    module Taobao
      class TaobaokeShopsGet < Base
        def initialize
          super
          @fields = 'shop_id,seller_nick,user_id,shop_title,click_url,commission_rate,seller_credit,shop_type,total_auction,auction_count'
          @api_paras[:fields] = @fields
        end

        def cid=(cid)
          @cid = cid
          @api_paras[:cid] = @cid
        end

        def cid
          @cid
        end

        def end_auctioncount=(end_auctioncount)
          @end_auctioncount = end_auctioncount
          @api_paras[:end_auctioncount] = @end_auctioncount
        end

        def end_auctioncount
          @end_auctioncount
        end

        def end_comissionrate=(end_comissionrate)
          @end_comissionrate = end_comissionrate
          @api_paras[:end_comissionrate] = @end_comissionrate
        end

        def end_comissionrate
          @end_comissionrate
        end

        def end_credit=(end_credit)
          @end_credit = end_credit
          @api_paras[:end_credit] = @end_credit
        end

        def end_credit
          @end_credit
        end

        def end_totalaction=(end_totalaction)
          @end_totalaction = end_totalaction
          @api_paras[:end_totalaction] = @end_totalaction
        end

        def end_totalaction
          @end_totalaction
        end

        def keyword=(keyword)
          @keyword = keyword
          @api_paras[:keyword] = @keyword
        end

        def keyword
          @keyword
        end

        def nick=(nick)
          @nick = nick
          @api_paras[:nick] = @nick
        end

        def nick
          @nick
        end

        def only_mall=(only_mall)
          @only_mall = only_mall
          @api_paras[:only_mall] = @only_mall
        end

        def only_mall
          @only_mall
        end

        def outer_code=(outer_code)
          @outer_code = outer_code
          @api_paras[:outer_code] = @outer_code
        end

        def outer_code
          @outer_code
        end

        def page_no=(page_no)
          @page_no = page_no
          @api_paras[:page_no] = @page_no
        end

        def page_no
          @page_no
        end

        def page_size=(page_size)
          @page_size = page_size
          @api_paras[:page_size] = @page_size
        end

        def page_size
          @page_size
        end

        def pid=(pid)
          @pid = pid
          @api_paras[:pid] = @pid
        end

        def pid
          @pid
        end

        def start_auction_count=(start_auction_count)
          @start_auction_count = start_auction_count
          @api_paras[:start_auction_count] = @start_auction_count
        end

        def start_auction_count
          @start_auction_count
        end

        def start_commissionrate=(start_commissionrate)
          @start_commissionrate = start_commissionrate
          @api_paras[:start_commissionrate] = @start_commissionrate
        end

        def start_credit=(start_credit)
          @start_credit = start_credit
          @api_paras[:start_credit] = @start_credit
        end

        def start_credit
          @start_credit
        end

        def start_totalaction=(start_totalaction)
          @start_totalaction = start_totalaction
          @api_paras[:start_totalaction] = @start_totalaction
        end

        def start_totalaction
          @start_totalaction
        end
      end
    end
  end
end
