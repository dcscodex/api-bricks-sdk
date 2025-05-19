# V1ExchangeRatesTimeseriesItem
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TimePeriodStart** | **System.DateTime** | Gets or sets the start time of the period. | [optional] 
**TimePeriodEnd** | **System.DateTime** | Gets or sets the end time of the period. | [optional] 
**TimeOpen** | **System.DateTime** | Gets or sets the opening time of the period. | [optional] 
**TimeClose** | **System.DateTime** | Gets or sets the closing time of the period. | [optional] 
**RateOpen** | **Double** | Gets or sets the opening rate for the period. | [optional] 
**RateHigh** | **Double** | Gets or sets the highest rate for the period. | [optional] 
**RateLow** | **Double** | Gets or sets the lowest rate for the period. | [optional] 
**RateClose** | **Double** | Gets or sets the closing rate for the period. | [optional] 

## Examples

- Prepare the resource
```powershell
$V1ExchangeRatesTimeseriesItem = Initialize-PSOpenAPIToolsV1ExchangeRatesTimeseriesItem  -TimePeriodStart null `
 -TimePeriodEnd null `
 -TimeOpen null `
 -TimeClose null `
 -RateOpen null `
 -RateHigh null `
 -RateLow null `
 -RateClose null
```

- Convert the resource to JSON
```powershell
$V1ExchangeRatesTimeseriesItem | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

