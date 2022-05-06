-module(openapi_key_value).

-export([encode/1]).

-export_type([openapi_key_value/0]).

-type openapi_key_value() ::
    #{ 'key' => binary(),
       'value' => binary()
     }.

encode(#{ 'key' := Key,
          'value' := Value
        }) ->
    #{ 'key' => Key,
       'value' => Value
     }.
