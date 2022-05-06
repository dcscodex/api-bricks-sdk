-module(openapi_exchange_login_require).

-export([encode/1]).

-export_type([openapi_exchange_login_require/0]).

-type openapi_exchange_login_require() ::
    #{ 'exchange_id' => binary(),
       'location_id' => binary(),
       'required_parameters' => list()
     }.

encode(#{ 'exchange_id' := ExchangeId,
          'location_id' := LocationId,
          'required_parameters' := RequiredParameters
        }) ->
    #{ 'exchange_id' => ExchangeId,
       'location_id' => LocationId,
       'required_parameters' => RequiredParameters
     }.
