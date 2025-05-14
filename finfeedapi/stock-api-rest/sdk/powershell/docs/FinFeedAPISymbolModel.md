# FinFeedAPISymbolModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SymbolId** | **String** |  | [optional] 
**ExchangeId** | **String** |  | [optional] 
**SecurityCategory** | **String** |  | [optional] [readonly] 
**Name** | **String** |  | [optional] 
**Date** | **String** |  | [optional] 
**AssetClass** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$FinFeedAPISymbolModel = Initialize-PSOpenAPIToolsFinFeedAPISymbolModel  -SymbolId null `
 -ExchangeId null `
 -SecurityCategory null `
 -Name null `
 -Date null `
 -AssetClass null
```

- Convert the resource to JSON
```powershell
$FinFeedAPISymbolModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

