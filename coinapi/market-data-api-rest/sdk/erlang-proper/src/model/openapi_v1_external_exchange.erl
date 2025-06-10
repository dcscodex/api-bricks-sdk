-module(openapi_v1_external_exchange).

-include("openapi.hrl").

-export([openapi_v1_external_exchange/0]).

-export([openapi_v1_external_exchange/1]).

-export_type([openapi_v1_external_exchange/0]).

-type openapi_v1_external_exchange() ::
  [ {'exchange_id', binary() }
  | {'external_name', binary() }
  | {'description', binary() }
  | {'source_id', binary() }
  ].


openapi_v1_external_exchange() ->
    openapi_v1_external_exchange([]).

openapi_v1_external_exchange(Fields) ->
  Default = [ {'exchange_id', binary() }
            , {'external_name', binary() }
            , {'description', binary() }
            , {'source_id', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

