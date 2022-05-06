-module(openapi_account_data).

-export([encode/1]).

-export_type([openapi_account_data/0]).

-type openapi_account_data() ::
    #{ 'exchange_id' => binary(),
       'parameters' => list()
     }.

encode(#{ 'exchange_id' := ExchangeId,
          'parameters' := Parameters
        }) ->
    #{ 'exchange_id' => ExchangeId,
       'parameters' => Parameters
     }.
