# V1ExternalExchange
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ExchangeId** | **String** | Gets or sets the internal exchange identifier. | [optional] 
**ExternalName** | **String** | Gets or sets the external protocol name/slug. | [optional] 
**Description** | **String** | Gets or sets the description of the exchange. | [optional] 
**SourceId** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$V1ExternalExchange = Initialize-PSOpenAPIToolsV1ExternalExchange  -ExchangeId null `
 -ExternalName null `
 -Description null `
 -SourceId null
```

- Convert the resource to JSON
```powershell
$V1ExternalExchange | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

