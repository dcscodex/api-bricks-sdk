-module(openapi_create_order400).

-export([encode/1]).

-export_type([openapi_create_order400/0]).

-type openapi_create_order400() ::
    #{ 'type' => binary(),
       'title' => binary(),
       'status' => integer(),
       'traceId' => binary(),
       'errors' => binary()
     }.

encode(#{ 'type' := Type,
          'title' := Title,
          'status' := Status,
          'traceId' := TraceId,
          'errors' := Errors
        }) ->
    #{ 'type' => Type,
       'title' => Title,
       'status' => Status,
       'traceId' => TraceId,
       'errors' => Errors
     }.
