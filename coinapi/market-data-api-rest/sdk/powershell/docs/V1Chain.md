# V1Chain
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ChainId** | **String** | Gets or sets the chain identifier. | [optional] 
**Name** | **String** | Gets or sets the name of the chain. | [optional] 

## Examples

- Prepare the resource
```powershell
$V1Chain = Initialize-PSOpenAPIToolsV1Chain  -ChainId null `
 -Name null
```

- Convert the resource to JSON
```powershell
$V1Chain | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

