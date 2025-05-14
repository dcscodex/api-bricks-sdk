-module(openapi_level1_quote_update_model).

-export([encode/1]).

-export_type([openapi_level1_quote_update_model/0]).

-type openapi_level1_quote_update_model() ::
    #{ 'symbol' => binary(),
       'timestamp_nanos' => integer(),
       'timestamp' => openapi_date_time:openapi_date_time(),
       'is_symbol_available' => boolean(),
       'is_pre_post_market_session' => boolean(),
       'ask_size' => integer(),
       'ask_price' => float(),
       'bid_price' => float(),
       'bid_size' => integer()
     }.

encode(#{ 'symbol' := Symbol,
          'timestamp_nanos' := TimestampNanos,
          'timestamp' := Timestamp,
          'is_symbol_available' := IsSymbolAvailable,
          'is_pre_post_market_session' := IsPrePostMarketSession,
          'ask_size' := AskSize,
          'ask_price' := AskPrice,
          'bid_price' := BidPrice,
          'bid_size' := BidSize
        }) ->
    #{ 'symbol' => Symbol,
       'timestamp_nanos' => TimestampNanos,
       'timestamp' => Timestamp,
       'is_symbol_available' => IsSymbolAvailable,
       'is_pre_post_market_session' => IsPrePostMarketSession,
       'ask_size' => AskSize,
       'ask_price' => AskPrice,
       'bid_price' => BidPrice,
       'bid_size' => BidSize
     }.
