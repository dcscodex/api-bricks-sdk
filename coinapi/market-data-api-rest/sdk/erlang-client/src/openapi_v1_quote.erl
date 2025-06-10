-module(openapi_v1_quote).

-export([encode/1]).

-export_type([openapi_v1_quote/0]).

-type openapi_v1_quote() ::
    #{ 'symbol_id' => binary(),
       'time_exchange' => openapi_date_time:openapi_date_time(),
       'time_coinapi' => openapi_date_time:openapi_date_time(),
       'ask_price' => float(),
       'ask_size' => float(),
       'bid_price' => float(),
       'bid_size' => float()
     }.

encode(#{ 'symbol_id' := SymbolId,
          'time_exchange' := TimeExchange,
          'time_coinapi' := TimeCoinapi,
          'ask_price' := AskPrice,
          'ask_size' := AskSize,
          'bid_price' := BidPrice,
          'bid_size' := BidSize
        }) ->
    #{ 'symbol_id' => SymbolId,
       'time_exchange' => TimeExchange,
       'time_coinapi' => TimeCoinapi,
       'ask_price' => AskPrice,
       'ask_size' => AskSize,
       'bid_price' => BidPrice,
       'bid_size' => BidSize
     }.
