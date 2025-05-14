-module(openapi_admin_short_sale_price_test_status_model).

-include("openapi.hrl").

-export([openapi_admin_short_sale_price_test_status_model/0]).

-export([openapi_admin_short_sale_price_test_status_model/1]).

-export_type([openapi_admin_short_sale_price_test_status_model/0]).

-type openapi_admin_short_sale_price_test_status_model() ::
  [ {'symbol', binary() }
  | {'timestamp_nanos', integer() }
  | {'timestamp', datetime() }
  | {'short_sale_price_test_status', integer() }
  | {'short_sale_price_test_status_code', binary() }
  | {'short_sale_price_test_status_text', binary() }
  | {'is_short_sale_price_test_not_in_effect', boolean() }
  | {'is_short_sale_price_test_in_effect', boolean() }
  | {'detail', integer() }
  | {'detail_code', binary() }
  | {'detail_text', binary() }
  | {'is_detail_no_price_test', boolean() }
  | {'is_detail_activated', boolean() }
  | {'is_detail_continued', boolean() }
  | {'is_detail_deactivated', boolean() }
  | {'is_detail_not_available', boolean() }
  ].


openapi_admin_short_sale_price_test_status_model() ->
    openapi_admin_short_sale_price_test_status_model([]).

openapi_admin_short_sale_price_test_status_model(Fields) ->
  Default = [ {'symbol', binary() }
            , {'timestamp_nanos', integer() }
            , {'timestamp', datetime() }
            , {'short_sale_price_test_status', integer() }
            , {'short_sale_price_test_status_code', binary() }
            , {'short_sale_price_test_status_text', binary() }
            , {'is_short_sale_price_test_not_in_effect', boolean() }
            , {'is_short_sale_price_test_in_effect', boolean() }
            , {'detail', integer() }
            , {'detail_code', binary() }
            , {'detail_text', binary() }
            , {'is_detail_no_price_test', boolean() }
            , {'is_detail_activated', boolean() }
            , {'is_detail_continued', boolean() }
            , {'is_detail_deactivated', boolean() }
            , {'is_detail_not_available', boolean() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

