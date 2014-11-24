# coding: utf-8

module YahooJp
  module Auction
    @@base_uri = "auctions.yahooapis.jp/AuctionWebService"

    class << self

      def base(api, v, opts={})
        token = opts.delete(:token)
        opts[:output] = 'json'
        opts[:callback] = 'callback'
        opts.merge!(YahooJp::Api.options)
        if token.nil? then
          if v == 'V1' then
            url = ['http:/', @@base_uri, v, api].join('/')
          elsif v == 'V2' then
            url = ['http:/', @@base_uri, v, 'json', api].join('/')
          end
          YahooJp::Request.get(url, opts)
        else
          opts.merge!(YahooJp::Api.options)
          opts.delete(:appid)
          url = ['https:/', @@base_uri, v, api].join('/')
          YahooJp::Request.get_with_auth(url, token, opts)
        end
      end

      def category_tree(opts={})
        base('categoryTree', 'V2', opts)
      end

      def category_leaf(opts={})
        base('categoryLeaf', 'V2', opts)
      end

      def selling_list(opts={})
        base('sellingList', 'V2', opts)
      end

      def search(opts={})
        base('search', 'V2', opts)
      end

      def item(opts={})
        base('auctionItem', 'V2', opts)
      end

      def bid_history(opts={})
        base('BidHistory', 'V1', opts)
      end

      def bid_history_detail(opts={})
        base('BidHistoryDetail', 'V1', opts)
      end

      def show_q_and_a(opts={})
        base('ShowQandA', 'V1', opts)
      end

      def show_rating(opts={})
        base('ShowRating', 'V1', opts)
      end

      def contents_match_item(opts={})
        base('contentsMatchItem', 'V1', opts)
      end

      def sale_compaign(opts={})
        base('saleCampaign', 'V1', opts)
      end

      # need access token
      def open_watch_list(opts={})
        base('openWatchList', 'V2', opts)
      end

      # need access token
      def close_watch_list(opts={})
        base('closeWatchList', 'V2', opts)
      end

      # need access token
      def open_watch_list(opts={})
        base('openWatchList', 'V2', opts)
      end

      # need access token
      def my_bid_list(opts={})
        base('myBidList', 'V2', opts)
      end

      # need access token
      def my_won_list(opts={})
        base('myWonList', 'V2', opts)
      end

      # need access token
      def my_selling_list(opts={})
        base('mySellingList', 'V2', opts)
      end

      # need access token
      def my_close_list(opts={})
        base('myCloseList', 'V2', opts)
      end

      # need access token
      def my_winner_list(opts={})
        base('myWinnerList', 'V1', opts)
      end

      # need access token
      def delete_my_won_list(opts={})
        base('deleteMyWonList', 'V1', opts)
      end

      # need access token
      def delete_my_close_list(opts={})
        base('deleteMyCloseList', 'V1', opts)
      end

      # need access token
      def my_offer_list(opts={})
        base('myOfferList', 'V1', opts)
      end

      # need access token
      def delete_my_offer_list(opts={})
        base('deleteMyOfferList', 'V1', opts)
      end

      # need access token
      def deleteReminder(opts={})
        base('deleteReminder', 'V1', opts)
      end

      # need access token
      def watch_list(opts={})
        base('watchList', 'V1', opts)
      end

      # need access token
      def delete_watch_list(opts={})
        base('deleteWatchList', 'V1', opts)
      end

    end
  end
end
