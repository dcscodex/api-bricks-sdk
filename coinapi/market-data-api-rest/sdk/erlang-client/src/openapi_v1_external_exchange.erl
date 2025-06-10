-module(openapi_v1_external_exchange).

-export([encode/1]).

-export_type([openapi_v1_external_exchange/0]).

-type openapi_v1_external_exchange() ::
    #{ 'exchange_id' => binary(),
       'external_name' => binary(),
       'description' => binary(),
       'source_id' => binary()
     }.

encode(#{ 'exchange_id' := ExchangeId,
          'external_name' := ExternalName,
          'description' := Description,
          'source_id' := SourceId
        }) ->
    #{ 'exchange_id' => ExchangeId,
       'external_name' => ExternalName,
       'description' => Description,
       'source_id' => SourceId
     }.
