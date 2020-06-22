-module(openapi_cancel_all_order).

-include("openapi.hrl").

-export([openapi_cancel_all_order/0]).

-export([openapi_cancel_all_order/1]).

-export_type([openapi_cancel_all_order/0]).

-type openapi_cancel_all_order() ::
  [ {'exchange_id', binary() }
  ].


openapi_cancel_all_order() ->
    openapi_cancel_all_order([]).

openapi_cancel_all_order(Fields) ->
  Default = [ {'exchange_id', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

