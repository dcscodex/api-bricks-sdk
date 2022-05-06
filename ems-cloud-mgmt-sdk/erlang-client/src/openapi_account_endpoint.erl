-module(openapi_account_endpoint).

-export([encode/1]).

-export_type([openapi_account_endpoint/0]).

-type openapi_account_endpoint() ::
    #{ 'exchange_id' => binary(),
       'location_id' => binary(),
       'endpoint_schema' => binary(),
       'endpoint_host' => binary(),
       'endpoint_url' => binary()
     }.

encode(#{ 'exchange_id' := ExchangeId,
          'location_id' := LocationId,
          'endpoint_schema' := EndpointSchema,
          'endpoint_host' := EndpointHost,
          'endpoint_url' := EndpointUrl
        }) ->
    #{ 'exchange_id' => ExchangeId,
       'location_id' => LocationId,
       'endpoint_schema' => EndpointSchema,
       'endpoint_host' => EndpointHost,
       'endpoint_url' => EndpointUrl
     }.
