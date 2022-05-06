-module(openapi_locations).

-include("openapi.hrl").

-export([openapi_locations/0]).

-export([openapi_locations/1]).

-export_type([openapi_locations/0]).

-type openapi_locations() ::
  [ {'location_id', binary() }
  | {'region_name', binary() }
  | {'provider_name', binary() }
  ].


openapi_locations() ->
    openapi_locations([]).

openapi_locations(Fields) ->
  Default = [ {'location_id', binary() }
            , {'region_name', binary() }
            , {'provider_name', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

