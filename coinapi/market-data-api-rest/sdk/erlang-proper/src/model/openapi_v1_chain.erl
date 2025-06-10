-module(openapi_v1_chain).

-include("openapi.hrl").

-export([openapi_v1_chain/0]).

-export([openapi_v1_chain/1]).

-export_type([openapi_v1_chain/0]).

-type openapi_v1_chain() ::
  [ {'chain_id', binary() }
  | {'name', binary() }
  ].


openapi_v1_chain() ->
    openapi_v1_chain([]).

openapi_v1_chain(Fields) ->
  Default = [ {'chain_id', binary() }
            , {'name', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

