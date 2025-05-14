# ADMIN_SHORT_SALE_PRICE_TEST_STATUS_MODEL

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | [**STRING_32**](STRING_32.md) | The stock symbol | [optional] [default to null]
**timestamp_nanos** | **INTEGER_64** | Original timestamp in nanoseconds since epoch | [optional] [default to null]
**timestamp** | [**DATE_TIME**](DATE_TIME.md) | Time when the short sale price test status was recorded as DateTime | [optional] [default to null]
**short_sale_price_test_status** | **INTEGER_32** | Short sale price test status as byte value | [optional] [default to null]
**short_sale_price_test_status_code** | [**STRING_32**](STRING_32.md) | Short sale price test status as hex string | [optional] [default to null]
**short_sale_price_test_status_text** | [**STRING_32**](STRING_32.md) | Human-readable description of the short sale price test status | [optional] [default to null]
**is_short_sale_price_test_not_in_effect** | **BOOLEAN** | Indicates if the short sale price test is not in effect | [optional] [default to null]
**is_short_sale_price_test_in_effect** | **BOOLEAN** | Indicates if the short sale price test is in effect | [optional] [default to null]
**detail** | **INTEGER_32** | Detail of the short sale price test as byte value | [optional] [default to null]
**detail_code** | [**STRING_32**](STRING_32.md) | Detail of the short sale price test as character string | [optional] [default to null]
**detail_text** | [**STRING_32**](STRING_32.md) | Human-readable description of the short sale price test detail | [optional] [default to null]
**is_detail_no_price_test** | **BOOLEAN** | Indicates if there is no price test in place | [optional] [default to null]
**is_detail_activated** | **BOOLEAN** | Indicates if the short sale price test restriction is in effect due to an intraday price drop | [optional] [default to null]
**is_detail_continued** | **BOOLEAN** | Indicates if the short sale price test restriction remains in effect from prior day | [optional] [default to null]
**is_detail_deactivated** | **BOOLEAN** | Indicates if the short sale price test restriction is deactivated | [optional] [default to null]
**is_detail_not_available** | **BOOLEAN** | Indicates if the detail is not available | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


