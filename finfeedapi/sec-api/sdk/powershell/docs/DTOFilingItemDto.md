# DTOFilingItemDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ItemNumber** | **String** |  | [optional] 
**ItemTitle** | **String** |  | [optional] 
**Content** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DTOFilingItemDto = Initialize-PSOpenAPIToolsDTOFilingItemDto  -ItemNumber null `
 -ItemTitle null `
 -Content null
```

- Convert the resource to JSON
```powershell
$DTOFilingItemDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

