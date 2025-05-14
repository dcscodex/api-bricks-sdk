# V1ExchangeRatesRate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Time** | **System.DateTime** | Gets or sets the time of the exchange rate. | [optional] 
**AssetIdQuote** | **String** | Gets or sets the quote asset ID of the exchange rate. | [optional] 
**Rate** | **Double** | Gets or sets the exchange rate value. | [optional] 

## Examples

- Prepare the resource
```powershell
$V1ExchangeRatesRate = Initialize-PSOpenAPIToolsV1ExchangeRatesRate  -Time null `
 -AssetIdQuote null `
 -Rate null
```

- Convert the resource to JSON
```powershell
$V1ExchangeRatesRate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

