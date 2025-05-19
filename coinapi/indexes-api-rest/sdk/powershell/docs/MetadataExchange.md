# MetadataExchange
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ExchangeId** | **String** | Gets or sets the exchange ID. | [optional] 
**Website** | **String** | Gets or sets the website URL of the exchange. | [optional] 
**Name** | **String** | Gets or sets the name of the exchange. | [optional] 

## Examples

- Prepare the resource
```powershell
$MetadataExchange = Initialize-PSOpenAPIToolsMetadataExchange  -ExchangeId null `
 -Website null `
 -Name null
```

- Convert the resource to JSON
```powershell
$MetadataExchange | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

