-module(openapi_v1_exchange_rates).

-export([encode/1]).

-export_type([openapi_v1_exchange_rates/0]).

-type openapi_v1_exchange_rates() ::
    #{ 'asset_id_base' => binary(),
       'rates' => list()
     }.

encode(#{ 'asset_id_base' := AssetIdBase,
          'rates' := Rates
        }) ->
    #{ 'asset_id_base' => AssetIdBase,
       'rates' => Rates
     }.
