# V1ExchangeRates
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AssetIdBase** | **String** | Gets or sets the base asset ID. | [optional] 
**Rates** | [**V1ExchangeRatesRate[]**](V1ExchangeRatesRate.md) | Gets or sets the list of exchange rates. | [optional] 

## Examples

- Prepare the resource
```powershell
$V1ExchangeRates = Initialize-PSOpenAPIToolsV1ExchangeRates  -AssetIdBase null `
 -Rates null
```

- Convert the resource to JSON
```powershell
$V1ExchangeRates | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

