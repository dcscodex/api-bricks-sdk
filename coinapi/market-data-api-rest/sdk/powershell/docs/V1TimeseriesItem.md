# V1TimeseriesItem
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TimePeriodStart** | **System.DateTime** | The start time of the time period. | [optional] 
**TimePeriodEnd** | **System.DateTime** | The end time of the time period. | [optional] 
**TimeOpen** | **System.DateTime** | The time when the price opened. | [optional] 
**TimeClose** | **System.DateTime** | The time when the price closed. | [optional] 
**PriceOpen** | **Double** | The opening price. | [optional] 
**PriceHigh** | **Double** | The highest price during the time period. | [optional] 
**PriceLow** | **Double** | The lowest price during the time period. | [optional] 
**PriceClose** | **Double** | The closing price. | [optional] 
**VolumeTraded** | **Double** | The total volume traded during the time period. | [optional] 
**TradesCount** | **Int64** | The number of trades executed during the time period. | [optional] 

## Examples

- Prepare the resource
```powershell
$V1TimeseriesItem = Initialize-PSOpenAPIToolsV1TimeseriesItem  -TimePeriodStart null `
 -TimePeriodEnd null `
 -TimeOpen null `
 -TimeClose null `
 -PriceOpen null `
 -PriceHigh null `
 -PriceLow null `
 -PriceClose null `
 -VolumeTraded null `
 -TradesCount null
```

- Convert the resource to JSON
```powershell
$V1TimeseriesItem | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

