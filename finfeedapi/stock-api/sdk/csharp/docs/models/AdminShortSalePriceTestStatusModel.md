# APIBricks.FinFeedAPI.STOCKAPI.REST.V1.Model.AdminShortSalePriceTestStatusModel
Represents the response DTO for short sale price test status information

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Symbol** | **string** | The stock symbol | [optional] 
**TimestampNanos** | **long** | Original timestamp in nanoseconds since epoch | [optional] 
**Timestamp** | **DateTime** | Time when the short sale price test status was recorded as DateTime | [optional] 
**ShortSalePriceTestStatus** | **int** | Short sale price test status as byte value | [optional] 
**ShortSalePriceTestStatusCode** | **string** | Short sale price test status as hex string | [optional] 
**ShortSalePriceTestStatusText** | **string** | Human-readable description of the short sale price test status | [optional] 
**IsShortSalePriceTestNotInEffect** | **bool** | Indicates if the short sale price test is not in effect | [optional] 
**IsShortSalePriceTestInEffect** | **bool** | Indicates if the short sale price test is in effect | [optional] 
**Detail** | **int** | Detail of the short sale price test as byte value | [optional] 
**DetailCode** | **string** | Detail of the short sale price test as character string | [optional] 
**DetailText** | **string** | Human-readable description of the short sale price test detail | [optional] 
**IsDetailNoPriceTest** | **bool** | Indicates if there is no price test in place | [optional] 
**IsDetailActivated** | **bool** | Indicates if the short sale price test restriction is in effect due to an intraday price drop | [optional] 
**IsDetailContinued** | **bool** | Indicates if the short sale price test restriction remains in effect from prior day | [optional] 
**IsDetailDeactivated** | **bool** | Indicates if the short sale price test restriction is deactivated | [optional] 
**IsDetailNotAvailable** | **bool** | Indicates if the detail is not available | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

