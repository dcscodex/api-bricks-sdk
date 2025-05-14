# OpenapiClient::AdminShortSalePriceTestStatusModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol** | **String** | The stock symbol | [optional] |
| **timestamp_nanos** | **Integer** | Original timestamp in nanoseconds since epoch | [optional] |
| **timestamp** | **Time** | Time when the short sale price test status was recorded as DateTime | [optional] |
| **short_sale_price_test_status** | **Integer** | Short sale price test status as byte value | [optional] |
| **short_sale_price_test_status_code** | **String** | Short sale price test status as hex string | [optional] |
| **short_sale_price_test_status_text** | **String** | Human-readable description of the short sale price test status | [optional] |
| **is_short_sale_price_test_not_in_effect** | **Boolean** | Indicates if the short sale price test is not in effect | [optional] |
| **is_short_sale_price_test_in_effect** | **Boolean** | Indicates if the short sale price test is in effect | [optional] |
| **detail** | **Integer** | Detail of the short sale price test as byte value | [optional] |
| **detail_code** | **String** | Detail of the short sale price test as character string | [optional] |
| **detail_text** | **String** | Human-readable description of the short sale price test detail | [optional] |
| **is_detail_no_price_test** | **Boolean** | Indicates if there is no price test in place | [optional] |
| **is_detail_activated** | **Boolean** | Indicates if the short sale price test restriction is in effect due to an intraday price drop | [optional] |
| **is_detail_continued** | **Boolean** | Indicates if the short sale price test restriction remains in effect from prior day | [optional] |
| **is_detail_deactivated** | **Boolean** | Indicates if the short sale price test restriction is deactivated | [optional] |
| **is_detail_not_available** | **Boolean** | Indicates if the detail is not available | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AdminShortSalePriceTestStatusModel.new(
  symbol: null,
  timestamp_nanos: null,
  timestamp: null,
  short_sale_price_test_status: null,
  short_sale_price_test_status_code: null,
  short_sale_price_test_status_text: null,
  is_short_sale_price_test_not_in_effect: null,
  is_short_sale_price_test_in_effect: null,
  detail: null,
  detail_code: null,
  detail_text: null,
  is_detail_no_price_test: null,
  is_detail_activated: null,
  is_detail_continued: null,
  is_detail_deactivated: null,
  is_detail_not_available: null
)
```

