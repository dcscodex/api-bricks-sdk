# openapi::AdminShortSalePriceTestStatusModel

Represents the response DTO for short sale price test status information

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **character** | The stock symbol | [optional] 
**timestamp_nanos** | **integer** | Original timestamp in nanoseconds since epoch | [optional] 
**timestamp** | **character** | Time when the short sale price test status was recorded as DateTime | [optional] 
**short_sale_price_test_status** | **integer** | Short sale price test status as byte value | [optional] 
**short_sale_price_test_status_code** | **character** | Short sale price test status as hex string | [optional] 
**short_sale_price_test_status_text** | **character** | Human-readable description of the short sale price test status | [optional] 
**is_short_sale_price_test_not_in_effect** | **character** | Indicates if the short sale price test is not in effect | [optional] 
**is_short_sale_price_test_in_effect** | **character** | Indicates if the short sale price test is in effect | [optional] 
**detail** | **integer** | Detail of the short sale price test as byte value | [optional] 
**detail_code** | **character** | Detail of the short sale price test as character string | [optional] 
**detail_text** | **character** | Human-readable description of the short sale price test detail | [optional] 
**is_detail_no_price_test** | **character** | Indicates if there is no price test in place | [optional] 
**is_detail_activated** | **character** | Indicates if the short sale price test restriction is in effect due to an intraday price drop | [optional] 
**is_detail_continued** | **character** | Indicates if the short sale price test restriction remains in effect from prior day | [optional] 
**is_detail_deactivated** | **character** | Indicates if the short sale price test restriction is deactivated | [optional] 
**is_detail_not_available** | **character** | Indicates if the detail is not available | [optional] 


