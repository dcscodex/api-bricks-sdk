# V1ExternalAsset
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AssetId** | **String** | Gets or sets the asset identifier. | [optional] 
**Description** | **String** | Gets or sets the description of the asset. | [optional] 
**AssetType** | **String** | Gets or sets the type/category of the asset. | [optional] 

## Examples

- Prepare the resource
```powershell
$V1ExternalAsset = Initialize-PSOpenAPIToolsV1ExternalAsset  -AssetId null `
 -Description null `
 -AssetType null
```

- Convert the resource to JSON
```powershell
$V1ExternalAsset | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

