-module(openapi_v1_exchange_rates_rate).

-export([encode/1]).

-export_type([openapi_v1_exchange_rates_rate/0]).

-type openapi_v1_exchange_rates_rate() ::
    #{ 'time' => openapi_date_time:openapi_date_time(),
       'asset_id_quote' => binary(),
       'rate' => float()
     }.

encode(#{ 'time' := Time,
          'asset_id_quote' := AssetIdQuote,
          'rate' := Rate
        }) ->
    #{ 'time' => Time,
       'asset_id_quote' => AssetIdQuote,
       'rate' => Rate
     }.
