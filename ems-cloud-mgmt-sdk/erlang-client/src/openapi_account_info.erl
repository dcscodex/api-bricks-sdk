-module(openapi_account_info).

-export([encode/1]).

-export_type([openapi_account_info/0]).

-type openapi_account_info() ::
    #{ 'exchange_id' => binary()
     }.

encode(#{ 'exchange_id' := ExchangeId
        }) ->
    #{ 'exchange_id' => ExchangeId
     }.
