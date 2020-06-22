-module(openapi_balance_data).

-export([encode/1]).

-export_type([openapi_balance_data/0]).

-type openapi_balance_data() ::
    #{ 'id' => binary(),
       'symbol_exchange' => binary(),
       'symbol_coinapi' => binary(),
       'balance' => integer(),
       'available' => integer(),
       'locked' => integer(),
       'update_origin' => binary()
     }.

encode(#{ 'id' := Id,
          'symbol_exchange' := SymbolExchange,
          'symbol_coinapi' := SymbolCoinapi,
          'balance' := Balance,
          'available' := Available,
          'locked' := Locked,
          'update_origin' := UpdateOrigin
        }) ->
    #{ 'id' => Id,
       'symbol_exchange' => SymbolExchange,
       'symbol_coinapi' => SymbolCoinapi,
       'balance' => Balance,
       'available' => Available,
       'locked' => Locked,
       'update_origin' => UpdateOrigin
     }.
