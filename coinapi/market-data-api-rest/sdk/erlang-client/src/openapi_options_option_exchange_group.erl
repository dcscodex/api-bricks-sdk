-module(openapi_options_option_exchange_group).

-export([encode/1]).

-export_type([openapi_options_option_exchange_group/0]).

-type openapi_options_option_exchange_group() ::
    #{ 'asset_id_base' => binary(),
       'asset_id_quote' => binary(),
       'underlying_price' => float(),
       'time_expiration' => openapi_date_time:openapi_date_time(),
       'strikes' => list()
     }.

encode(#{ 'asset_id_base' := AssetIdBase,
          'asset_id_quote' := AssetIdQuote,
          'underlying_price' := UnderlyingPrice,
          'time_expiration' := TimeExpiration,
          'strikes' := Strikes
        }) ->
    #{ 'asset_id_base' => AssetIdBase,
       'asset_id_quote' => AssetIdQuote,
       'underlying_price' => UnderlyingPrice,
       'time_expiration' => TimeExpiration,
       'strikes' => Strikes
     }.
