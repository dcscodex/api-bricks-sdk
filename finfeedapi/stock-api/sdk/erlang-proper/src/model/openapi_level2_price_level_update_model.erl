-module(openapi_level2_price_level_update_model).

-include("openapi.hrl").

-export([openapi_level2_price_level_update_model/0]).

-export([openapi_level2_price_level_update_model/1]).

-export_type([openapi_level2_price_level_update_model/0]).

-type openapi_level2_price_level_update_model() ::
  [ {'symbol', binary() }
  | {'timestamp_nanos', integer() }
  | {'timestamp', datetime() }
  | {'is_side_buy', boolean() }
  | {'is_event_processing_complete', boolean() }
  | {'size', integer() }
  | {'price', float() }
  ].


openapi_level2_price_level_update_model() ->
    openapi_level2_price_level_update_model([]).

openapi_level2_price_level_update_model(Fields) ->
  Default = [ {'symbol', binary() }
            , {'timestamp_nanos', integer() }
            , {'timestamp', datetime() }
            , {'is_side_buy', boolean() }
            , {'is_event_processing_complete', boolean() }
            , {'size', integer() }
            , {'price', float() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

