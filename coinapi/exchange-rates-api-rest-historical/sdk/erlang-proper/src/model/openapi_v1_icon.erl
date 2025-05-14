-module(openapi_v1_icon).

-include("openapi.hrl").

-export([openapi_v1_icon/0]).

-export([openapi_v1_icon/1]).

-export_type([openapi_v1_icon/0]).

-type openapi_v1_icon() ::
  [ {'exchange_id', binary() }
  | {'asset_id', binary() }
  | {'url', binary() }
  ].


openapi_v1_icon() ->
    openapi_v1_icon([]).

openapi_v1_icon(Fields) ->
  Default = [ {'exchange_id', binary() }
            , {'asset_id', binary() }
            , {'url', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

