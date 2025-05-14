# AdminShortSalePriceTestStatusModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Symbol** | **String** | The stock symbol | [optional] 
**TimestampNanos** | **Int64** | Original timestamp in nanoseconds since epoch | [optional] 
**Timestamp** | **System.DateTime** | Time when the short sale price test status was recorded as DateTime | [optional] 
**ShortSalePriceTestStatus** | **Int32** | Short sale price test status as byte value | [optional] 
**ShortSalePriceTestStatusCode** | **String** | Short sale price test status as hex string | [optional] 
**ShortSalePriceTestStatusText** | **String** | Human-readable description of the short sale price test status | [optional] 
**IsShortSalePriceTestNotInEffect** | **Boolean** | Indicates if the short sale price test is not in effect | [optional] 
**IsShortSalePriceTestInEffect** | **Boolean** | Indicates if the short sale price test is in effect | [optional] 
**Detail** | **Int32** | Detail of the short sale price test as byte value | [optional] 
**DetailCode** | **String** | Detail of the short sale price test as character string | [optional] 
**DetailText** | **String** | Human-readable description of the short sale price test detail | [optional] 
**IsDetailNoPriceTest** | **Boolean** | Indicates if there is no price test in place | [optional] 
**IsDetailActivated** | **Boolean** | Indicates if the short sale price test restriction is in effect due to an intraday price drop | [optional] 
**IsDetailContinued** | **Boolean** | Indicates if the short sale price test restriction remains in effect from prior day | [optional] 
**IsDetailDeactivated** | **Boolean** | Indicates if the short sale price test restriction is deactivated | [optional] 
**IsDetailNotAvailable** | **Boolean** | Indicates if the detail is not available | [optional] 

## Examples

- Prepare the resource
```powershell
$AdminShortSalePriceTestStatusModel = Initialize-PSOpenAPIToolsAdminShortSalePriceTestStatusModel  -Symbol null `
 -TimestampNanos null `
 -Timestamp null `
 -ShortSalePriceTestStatus null `
 -ShortSalePriceTestStatusCode null `
 -ShortSalePriceTestStatusText null `
 -IsShortSalePriceTestNotInEffect null `
 -IsShortSalePriceTestInEffect null `
 -Detail null `
 -DetailCode null `
 -DetailText null `
 -IsDetailNoPriceTest null `
 -IsDetailActivated null `
 -IsDetailContinued null `
 -IsDetailDeactivated null `
 -IsDetailNotAvailable null
```

- Convert the resource to JSON
```powershell
$AdminShortSalePriceTestStatusModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

