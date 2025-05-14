-module(openapi_admin_official_price_model).

-include("openapi.hrl").

-export([openapi_admin_official_price_model/0]).

-export([openapi_admin_official_price_model/1]).

-export_type([openapi_admin_official_price_model/0]).

-type openapi_admin_official_price_model() ::
  [ {'symbol', binary() }
  | {'timestamp_nanos', integer() }
  | {'timestamp', datetime() }
  | {'price_type', integer() }
  | {'price_type_code', binary() }
  | {'price_type_text', binary() }
  | {'is_price_type_opening', boolean() }
  | {'is_price_type_closing', boolean() }
  | {'official_price', float() }
  ].


openapi_admin_official_price_model() ->
    openapi_admin_official_price_model([]).

openapi_admin_official_price_model(Fields) ->
  Default = [ {'symbol', binary() }
            , {'timestamp_nanos', integer() }
            , {'timestamp', datetime() }
            , {'price_type', integer() }
            , {'price_type_code', binary() }
            , {'price_type_text', binary() }
            , {'is_price_type_opening', boolean() }
            , {'is_price_type_closing', boolean() }
            , {'official_price', float() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

