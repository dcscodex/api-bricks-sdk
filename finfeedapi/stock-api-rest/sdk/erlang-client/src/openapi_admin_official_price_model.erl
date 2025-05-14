-module(openapi_admin_official_price_model).

-export([encode/1]).

-export_type([openapi_admin_official_price_model/0]).

-type openapi_admin_official_price_model() ::
    #{ 'symbol' => binary(),
       'timestamp_nanos' => integer(),
       'timestamp' => openapi_date_time:openapi_date_time(),
       'price_type' => integer(),
       'price_type_code' => binary(),
       'price_type_text' => binary(),
       'is_price_type_opening' => boolean(),
       'is_price_type_closing' => boolean(),
       'official_price' => float()
     }.

encode(#{ 'symbol' := Symbol,
          'timestamp_nanos' := TimestampNanos,
          'timestamp' := Timestamp,
          'price_type' := PriceType,
          'price_type_code' := PriceTypeCode,
          'price_type_text' := PriceTypeText,
          'is_price_type_opening' := IsPriceTypeOpening,
          'is_price_type_closing' := IsPriceTypeClosing,
          'official_price' := OfficialPrice
        }) ->
    #{ 'symbol' => Symbol,
       'timestamp_nanos' => TimestampNanos,
       'timestamp' => Timestamp,
       'price_type' => PriceType,
       'price_type_code' => PriceTypeCode,
       'price_type_text' => PriceTypeText,
       'is_price_type_opening' => IsPriceTypeOpening,
       'is_price_type_closing' => IsPriceTypeClosing,
       'official_price' => OfficialPrice
     }.
