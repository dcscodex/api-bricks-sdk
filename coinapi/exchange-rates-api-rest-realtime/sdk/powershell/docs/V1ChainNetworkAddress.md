# V1ChainNetworkAddress
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ChainId** | **String** | Gets or sets chain id | [optional] 
**NetworkId** | **String** | Gets or sets network id | [optional] 
**Address** | **String** | Gets or sets chain address | [optional] 

## Examples

- Prepare the resource
```powershell
$V1ChainNetworkAddress = Initialize-PSOpenAPIToolsV1ChainNetworkAddress  -ChainId null `
 -NetworkId null `
 -Address null
```

- Convert the resource to JSON
```powershell
$V1ChainNetworkAddress | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

