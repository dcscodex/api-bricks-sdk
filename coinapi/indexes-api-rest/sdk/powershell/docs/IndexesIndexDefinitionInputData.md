# IndexesIndexDefinitionInputData
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ExchangeId** | **String** |  | [optional] 
**ExchangeSymbolId** | **String** |  | [optional] 
**BaseAssetId** | **String** |  | [optional] 
**QuoteAssetId** | **String** |  | [optional] 
**BeginDate** | **System.DateTime** |  | [optional] 
**EndDate** | **System.DateTime** |  | [optional] 
**Status** | **String** |  | [optional] 
**StatusInfo** | **String** |  | [optional] 
**LastModificationTime** | **System.DateTime** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$IndexesIndexDefinitionInputData = Initialize-PSOpenAPIToolsIndexesIndexDefinitionInputData  -ExchangeId null `
 -ExchangeSymbolId null `
 -BaseAssetId null `
 -QuoteAssetId null `
 -BeginDate null `
 -EndDate null `
 -Status null `
 -StatusInfo null `
 -LastModificationTime null
```

- Convert the resource to JSON
```powershell
$IndexesIndexDefinitionInputData | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

