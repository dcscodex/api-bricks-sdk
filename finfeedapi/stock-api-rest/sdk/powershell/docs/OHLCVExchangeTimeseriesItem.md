# OHLCVExchangeTimeseriesItem
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TimePeriodStart** | **System.DateTime** | Gets or sets the start time of the time period. | [optional] 
**TimePeriodEnd** | **System.DateTime** | Gets or sets the end time of the time period. | [optional] 
**TimeOpen** | **System.DateTime** | Gets or sets the time when the price opened. | [optional] 
**TimeClose** | **System.DateTime** | Gets or sets the time when the price closed. | [optional] 
**PriceOpen** | **Double** | Gets or sets the opening price. | [optional] 
**PriceHigh** | **Double** | Gets or sets the highest price during the time period. | [optional] 
**PriceLow** | **Double** | Gets or sets the lowest price during the time period. | [optional] 
**PriceClose** | **Double** | Gets or sets the closing price. | [optional] 
**VolumeTraded** | **Double** | Gets or sets the total volume traded during the time period. | [optional] 
**TradesCount** | **Int64** | Gets or sets the number of trades executed during the time period. | [optional] 
**SymbolIdExchange** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$OHLCVExchangeTimeseriesItem = Initialize-PSOpenAPIToolsOHLCVExchangeTimeseriesItem  -TimePeriodStart null `
 -TimePeriodEnd null `
 -TimeOpen null `
 -TimeClose null `
 -PriceOpen null `
 -PriceHigh null `
 -PriceLow null `
 -PriceClose null `
 -VolumeTraded null `
 -TradesCount null `
 -SymbolIdExchange null
```

- Convert the resource to JSON
```powershell
$OHLCVExchangeTimeseriesItem | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

