# OptionsOptionExchangeGroup
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AssetIdBase** | **String** | The base asset identifier. | [optional] 
**AssetIdQuote** | **String** | The quote asset identifier. | [optional] 
**UnderlyingPrice** | **Double** | The underlying price of the option. | [optional] 
**TimeExpiration** | **System.DateTime** | The expiration time of the option. | [optional] 
**Strikes** | [**OptionsStrike[]**](OptionsStrike.md) | The list of strikes available. | [optional] 

## Examples

- Prepare the resource
```powershell
$OptionsOptionExchangeGroup = Initialize-PSOpenAPIToolsOptionsOptionExchangeGroup  -AssetIdBase null `
 -AssetIdQuote null `
 -UnderlyingPrice null `
 -TimeExpiration null `
 -Strikes null
```

- Convert the resource to JSON
```powershell
$OptionsOptionExchangeGroup | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

