-module(openapi_v1_quote_trade).

-export([encode/1]).

-export_type([openapi_v1_quote_trade/0]).

-type openapi_v1_quote_trade() ::
    #{ 'symbol_id' => binary(),
       'time_exchange' => openapi_date_time:openapi_date_time(),
       'time_coinapi' => openapi_date_time:openapi_date_time(),
       'ask_price' => float(),
       'ask_size' => float(),
       'bid_price' => float(),
       'bid_size' => float(),
       'last_trade' => openapi_v1_last_trade:openapi_v1_last_trade()
     }.

encode(#{ 'symbol_id' := SymbolId,
          'time_exchange' := TimeExchange,
          'time_coinapi' := TimeCoinapi,
          'ask_price' := AskPrice,
          'ask_size' := AskSize,
          'bid_price' := BidPrice,
          'bid_size' := BidSize,
          'last_trade' := LastTrade
        }) ->
    #{ 'symbol_id' => SymbolId,
       'time_exchange' => TimeExchange,
       'time_coinapi' => TimeCoinapi,
       'ask_price' => AskPrice,
       'ask_size' => AskSize,
       'bid_price' => BidPrice,
       'bid_size' => BidSize,
       'last_trade' => LastTrade
     }.
