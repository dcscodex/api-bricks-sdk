-module(openapi_options_strike).

-export([encode/1]).

-export_type([openapi_options_strike/0]).

-type openapi_options_strike() ::
    #{ 'strike_price' => float(),
       'call' => openapi_v1_quote_trade:openapi_v1_quote_trade(),
       'put' => openapi_v1_quote_trade:openapi_v1_quote_trade()
     }.

encode(#{ 'strike_price' := StrikePrice,
          'call' := Call,
          'put' := Put
        }) ->
    #{ 'strike_price' => StrikePrice,
       'call' => Call,
       'put' => Put
     }.
