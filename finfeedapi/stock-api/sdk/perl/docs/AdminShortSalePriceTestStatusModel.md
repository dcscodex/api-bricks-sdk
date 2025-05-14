# WWW::OpenAPIClient::Object::AdminShortSalePriceTestStatusModel

## Load the model package
```perl
use WWW::OpenAPIClient::Object::AdminShortSalePriceTestStatusModel;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **string** | The stock symbol | [optional] 
**timestamp_nanos** | **int** | Original timestamp in nanoseconds since epoch | [optional] 
**timestamp** | **DATE_TIME** | Time when the short sale price test status was recorded as DateTime | [optional] 
**short_sale_price_test_status** | **int** | Short sale price test status as byte value | [optional] 
**short_sale_price_test_status_code** | **string** | Short sale price test status as hex string | [optional] 
**short_sale_price_test_status_text** | **string** | Human-readable description of the short sale price test status | [optional] 
**is_short_sale_price_test_not_in_effect** | **boolean** | Indicates if the short sale price test is not in effect | [optional] 
**is_short_sale_price_test_in_effect** | **boolean** | Indicates if the short sale price test is in effect | [optional] 
**detail** | **int** | Detail of the short sale price test as byte value | [optional] 
**detail_code** | **string** | Detail of the short sale price test as character string | [optional] 
**detail_text** | **string** | Human-readable description of the short sale price test detail | [optional] 
**is_detail_no_price_test** | **boolean** | Indicates if there is no price test in place | [optional] 
**is_detail_activated** | **boolean** | Indicates if the short sale price test restriction is in effect due to an intraday price drop | [optional] 
**is_detail_continued** | **boolean** | Indicates if the short sale price test restriction remains in effect from prior day | [optional] 
**is_detail_deactivated** | **boolean** | Indicates if the short sale price test restriction is deactivated | [optional] 
**is_detail_not_available** | **boolean** | Indicates if the detail is not available | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


