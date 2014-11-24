# YahooJp::Api

[![Gem Version](https://badge.fury.io/rb/yahoojp-auction-api.png)](http://badge.fury.io/rb/yahoojp-auction-api)
Yahoo Japan Auction Ruby API

## Installation

Add this line to your application's Gemfile:

    gem 'yahoojp-auction-api'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install yahoojp-auction-api

## Usage

```ruby
require 'yahoojp/api'

# configure
YahooJp::Api.configure do |options|
  options[:appid] = 'you api id'
end

# Search API
res = YahooJp::Auction.search({:query => 'hoge'})
res.code
res.message
list = res['ResultSet']['Result']['Item']
list.each do |i|
  p i
end

# My Selling List API
res = YahooJp::Auction.my_selling_list({:start => 1, :token => token, :list => 'sold'})
list = res["ResultSet"]["Result"]
...

```ruby
# Yahoo Auction Web API
YahooJp::Auction.category_tree        # Category Tree API Version2
YahooJp::Auction.category_leaf        # Category Leaf API Version2
YahooJp::Auction.selling_list         # Selling List API Version2
YahooJp::Auction.search               # Search API Version2
YahooJp::Auction.item                 # Item API Version1
YahooJp::Auction.bid_history          # Bid History API Version1
YahooJp::Auction.bid_history_detail   # Bid History Detail API Version1
YahooJp::Auction.show_q_and_a         # Show Q and A API Version1
YahooJp::Auction.show_rating          # Show Rating API Version1
YahooJp::Auction.contents_match_item  # Contents Match Item API Version1
YahooJp::Auction.sale_compaign        # Sale Compaign API Version1
YahooJp::Auction.open_watch_list      # Open Watch List API with access token Version2
YahooJp::Auction.my_bid_list          # My Bid List API with access token Version2
YahooJp::Auction.my_won_list          # My Won List API with access token Version2
YahooJp::Auction.my_selling_list      # My Selling List API with access token Version2
YahooJp::Auction.my_close_list        # My Close List API with access token Version2
YahooJp::Auction.my_winner_list       # My Winner List API with access token Version1
YahooJp::Auction.delete_my_won_list   # Delete My Won List API with access token Version1
YahooJp::Auction.delete_my_close_list # Delete My Close List API with access token Version1
YahooJp::Auction.my_offer_list        # My Offer List API with access token Version1
YahooJp::Auction.delete_my_offer_list # Delete My Offer List API with access token Version1
YahooJp::Auction.delete_reminder      # Delete Reminder API with access token Version1
YahooJp::Auction.watch_list           # Watch List API with access token Version1
YahooJp::Auction.delete_watch_list    # Delete Watch List API with access token Version1
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
