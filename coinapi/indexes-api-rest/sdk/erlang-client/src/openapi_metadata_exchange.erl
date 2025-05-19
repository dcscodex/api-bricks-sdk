-module(openapi_metadata_exchange).

-export([encode/1]).

-export_type([openapi_metadata_exchange/0]).

-type openapi_metadata_exchange() ::
    #{ 'exchange_id' => binary(),
       'website' => binary(),
       'name' => binary()
     }.

encode(#{ 'exchange_id' := ExchangeId,
          'website' := Website,
          'name' := Name
        }) ->
    #{ 'exchange_id' => ExchangeId,
       'website' => Website,
       'name' => Name
     }.
