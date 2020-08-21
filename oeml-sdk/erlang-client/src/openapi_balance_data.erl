-module(openapi_balance_data).

-export([encode/1]).

-export_type([openapi_balance_data/0]).

-type openapi_balance_data() ::
    #{ 'asset_id_exchange' => binary(),
       'asset_id_coinapi' => binary(),
       'balance' => integer(),
       'available' => integer(),
       'locked' => integer(),
       'last_updated_by' => binary(),
       'rate_usd' => integer(),
       'traded' => integer()
     }.

encode(#{ 'asset_id_exchange' := AssetIdExchange,
          'asset_id_coinapi' := AssetIdCoinapi,
          'balance' := Balance,
          'available' := Available,
          'locked' := Locked,
          'last_updated_by' := LastUpdatedBy,
          'rate_usd' := RateUsd,
          'traded' := Traded
        }) ->
    #{ 'asset_id_exchange' => AssetIdExchange,
       'asset_id_coinapi' => AssetIdCoinapi,
       'balance' => Balance,
       'available' => Available,
       'locked' => Locked,
       'last_updated_by' => LastUpdatedBy,
       'rate_usd' => RateUsd,
       'traded' => Traded
     }.
