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
**CfiCode** | **String** |  | [optional] 
**CfiCategory** | **String** |  | [optional] [readonly] 
**CfiGroup** | **String** |  | [optional] [readonly] 
**CfiAttribute1** | **String** |  | [optional] [readonly] 
**CfiAttribute2** | **String** |  | [optional] [readonly] 
**CfiAttribute3** | **String** |  | [optional] [readonly] 
**CfiAttribute4** | **String** |  | [optional] [readonly] 
**CfiCategoryDesc** | **String** |  | [optional] [readonly] 
**CfiGroupDesc** | **String** |  | [optional] [readonly] 
**CfiAttribute1Desc** | **String** |  | [optional] [readonly] 
**CfiAttribute2Desc** | **String** |  | [optional] [readonly] 
**CfiAttribute3Desc** | **String** |  | [optional] [readonly] 
**CfiAttribute4Desc** | **String** |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$FinFeedAPISymbolModel = Initialize-PSOpenAPIToolsFinFeedAPISymbolModel  -SymbolId null `
 -ExchangeId null `
 -SecurityCategory null `
 -Name null `
 -Date null `
 -AssetClass null `
 -CfiCode null `
 -CfiCategory null `
 -CfiGroup null `
 -CfiAttribute1 null `
 -CfiAttribute2 null `
 -CfiAttribute3 null `
 -CfiAttribute4 null `
 -CfiCategoryDesc null `
 -CfiGroupDesc null `
 -CfiAttribute1Desc null `
 -CfiAttribute2Desc null `
 -CfiAttribute3Desc null `
 -CfiAttribute4Desc null
```

- Convert the resource to JSON
```powershell
$FinFeedAPISymbolModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

