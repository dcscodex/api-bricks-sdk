-module(openapi_v1_external_asset).

-include("openapi.hrl").

-export([openapi_v1_external_asset/0]).

-export([openapi_v1_external_asset/1]).

-export_type([openapi_v1_external_asset/0]).

-type openapi_v1_external_asset() ::
  [ {'asset_id', binary() }
  | {'description', binary() }
  | {'asset_type', binary() }
  ].


openapi_v1_external_asset() ->
    openapi_v1_external_asset([]).

openapi_v1_external_asset(Fields) ->
  Default = [ {'asset_id', binary() }
            , {'description', binary() }
            , {'asset_type', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

