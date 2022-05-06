-module(openapi_get_account).

-export([encode/1]).

-export_type([openapi_get_account/0]).

-type openapi_get_account() ::
    #{ 'exchange_id' => binary(),
       'parameters' => list()
     }.

encode(#{ 'exchange_id' := ExchangeId,
          'parameters' := Parameters
        }) ->
    #{ 'exchange_id' => ExchangeId,
       'parameters' => Parameters
     }.
