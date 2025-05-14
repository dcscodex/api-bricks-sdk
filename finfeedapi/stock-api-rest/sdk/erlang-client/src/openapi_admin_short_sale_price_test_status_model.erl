-module(openapi_admin_short_sale_price_test_status_model).

-export([encode/1]).

-export_type([openapi_admin_short_sale_price_test_status_model/0]).

-type openapi_admin_short_sale_price_test_status_model() ::
    #{ 'symbol' => binary(),
       'timestamp_nanos' => integer(),
       'timestamp' => openapi_date_time:openapi_date_time(),
       'short_sale_price_test_status' => integer(),
       'short_sale_price_test_status_code' => binary(),
       'short_sale_price_test_status_text' => binary(),
       'is_short_sale_price_test_not_in_effect' => boolean(),
       'is_short_sale_price_test_in_effect' => boolean(),
       'detail' => integer(),
       'detail_code' => binary(),
       'detail_text' => binary(),
       'is_detail_no_price_test' => boolean(),
       'is_detail_activated' => boolean(),
       'is_detail_continued' => boolean(),
       'is_detail_deactivated' => boolean(),
       'is_detail_not_available' => boolean()
     }.

encode(#{ 'symbol' := Symbol,
          'timestamp_nanos' := TimestampNanos,
          'timestamp' := Timestamp,
          'short_sale_price_test_status' := ShortSalePriceTestStatus,
          'short_sale_price_test_status_code' := ShortSalePriceTestStatusCode,
          'short_sale_price_test_status_text' := ShortSalePriceTestStatusText,
          'is_short_sale_price_test_not_in_effect' := IsShortSalePriceTestNotInEffect,
          'is_short_sale_price_test_in_effect' := IsShortSalePriceTestInEffect,
          'detail' := Detail,
          'detail_code' := DetailCode,
          'detail_text' := DetailText,
          'is_detail_no_price_test' := IsDetailNoPriceTest,
          'is_detail_activated' := IsDetailActivated,
          'is_detail_continued' := IsDetailContinued,
          'is_detail_deactivated' := IsDetailDeactivated,
          'is_detail_not_available' := IsDetailNotAvailable
        }) ->
    #{ 'symbol' => Symbol,
       'timestamp_nanos' => TimestampNanos,
       'timestamp' => Timestamp,
       'short_sale_price_test_status' => ShortSalePriceTestStatus,
       'short_sale_price_test_status_code' => ShortSalePriceTestStatusCode,
       'short_sale_price_test_status_text' => ShortSalePriceTestStatusText,
       'is_short_sale_price_test_not_in_effect' => IsShortSalePriceTestNotInEffect,
       'is_short_sale_price_test_in_effect' => IsShortSalePriceTestInEffect,
       'detail' => Detail,
       'detail_code' => DetailCode,
       'detail_text' => DetailText,
       'is_detail_no_price_test' => IsDetailNoPriceTest,
       'is_detail_activated' => IsDetailActivated,
       'is_detail_continued' => IsDetailContinued,
       'is_detail_deactivated' => IsDetailDeactivated,
       'is_detail_not_available' => IsDetailNotAvailable
     }.
