-module(openapi_metadata_exchange).

-include("openapi.hrl").

-export([openapi_metadata_exchange/0]).

-export([openapi_metadata_exchange/1]).

-export_type([openapi_metadata_exchange/0]).

-type openapi_metadata_exchange() ::
  [ {'exchange_id', binary() }
  | {'website', binary() }
  | {'name', binary() }
  ].


openapi_metadata_exchange() ->
    openapi_metadata_exchange([]).

openapi_metadata_exchange(Fields) ->
  Default = [ {'exchange_id', binary() }
            , {'website', binary() }
            , {'name', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

