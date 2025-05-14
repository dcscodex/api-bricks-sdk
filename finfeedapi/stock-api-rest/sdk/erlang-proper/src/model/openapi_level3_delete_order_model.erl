-module(openapi_level3_delete_order_model).

-include("openapi.hrl").

-export([openapi_level3_delete_order_model/0]).

-export([openapi_level3_delete_order_model/1]).

-export_type([openapi_level3_delete_order_model/0]).

-type openapi_level3_delete_order_model() ::
  [ {'symbol', binary() }
  | {'timestamp_nanos', integer() }
  | {'timestamp', datetime() }
  | {'order_id_reference', integer() }
  ].


openapi_level3_delete_order_model() ->
    openapi_level3_delete_order_model([]).

openapi_level3_delete_order_model(Fields) ->
  Default = [ {'symbol', binary() }
            , {'timestamp_nanos', integer() }
            , {'timestamp', datetime() }
            , {'order_id_reference', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

