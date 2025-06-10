-module(openapi_v1_general_data).

-include("openapi.hrl").

-export([openapi_v1_general_data/0]).

-export([openapi_v1_general_data/1]).

-export_type([openapi_v1_general_data/0]).

-type openapi_v1_general_data() ::
  [ {'entry_time', datetime() }
  | {'recv_time', datetime() }
  | {'exchange_id', binary() }
  | {'asset_id', binary() }
  | {'symbol_id', binary() }
  | {'metric_id', binary() }
  | {'value_decimal', float() }
  | {'value_text', binary() }
  | {'value_time', datetime() }
  ].


openapi_v1_general_data() ->
    openapi_v1_general_data([]).

openapi_v1_general_data(Fields) ->
  Default = [ {'entry_time', datetime() }
            , {'recv_time', datetime() }
            , {'exchange_id', binary() }
            , {'asset_id', binary() }
            , {'symbol_id', binary() }
            , {'metric_id', binary() }
            , {'value_decimal', float() }
            , {'value_text', binary() }
            , {'value_time', datetime() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

