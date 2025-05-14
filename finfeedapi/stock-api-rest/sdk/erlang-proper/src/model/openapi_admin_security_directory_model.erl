-module(openapi_admin_security_directory_model).

-include("openapi.hrl").

-export([openapi_admin_security_directory_model/0]).

-export([openapi_admin_security_directory_model/1]).

-export_type([openapi_admin_security_directory_model/0]).

-type openapi_admin_security_directory_model() ::
  [ {'symbol', binary() }
  | {'timestamp_nanos', integer() }
  | {'timestamp', datetime() }
  | {'flags', integer() }
  | {'round_lot_size', integer() }
  | {'adjusted_poc_price', float() }
  | {'luld_tier', integer() }
  | {'luld_tier_code', binary() }
  | {'luld_tier_text', binary() }
  | {'is_luld_tier_not_applicable', boolean() }
  | {'is_luld_tier1', boolean() }
  | {'is_luld_tier2', boolean() }
  ].


openapi_admin_security_directory_model() ->
    openapi_admin_security_directory_model([]).

openapi_admin_security_directory_model(Fields) ->
  Default = [ {'symbol', binary() }
            , {'timestamp_nanos', integer() }
            , {'timestamp', datetime() }
            , {'flags', integer() }
            , {'round_lot_size', integer() }
            , {'adjusted_poc_price', float() }
            , {'luld_tier', integer() }
            , {'luld_tier_code', binary() }
            , {'luld_tier_text', binary() }
            , {'is_luld_tier_not_applicable', boolean() }
            , {'is_luld_tier1', boolean() }
            , {'is_luld_tier2', boolean() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

