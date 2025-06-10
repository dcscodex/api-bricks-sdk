-module(openapi_v1_order_book_depth).

-export([encode/1]).

-export_type([openapi_v1_order_book_depth/0]).

-type openapi_v1_order_book_depth() ::
    #{ 'symbol_id' => binary(),
       'time_exchange' => openapi_date_time:openapi_date_time(),
       'time_coinapi' => openapi_date_time:openapi_date_time(),
       'ask_levels' => integer(),
       'bid_levels' => integer(),
       'ask_depth' => float(),
       'bid_depth' => float()
     }.

encode(#{ 'symbol_id' := SymbolId,
          'time_exchange' := TimeExchange,
          'time_coinapi' := TimeCoinapi,
          'ask_levels' := AskLevels,
          'bid_levels' := BidLevels,
          'ask_depth' := AskDepth,
          'bid_depth' := BidDepth
        }) ->
    #{ 'symbol_id' => SymbolId,
       'time_exchange' => TimeExchange,
       'time_coinapi' => TimeCoinapi,
       'ask_levels' => AskLevels,
       'bid_levels' => BidLevels,
       'ask_depth' => AskDepth,
       'bid_depth' => BidDepth
     }.
