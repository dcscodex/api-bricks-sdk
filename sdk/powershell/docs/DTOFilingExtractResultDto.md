# DTOFilingExtractResultDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccessionNumber** | **String** |  | [optional] 
**FormType** | **String** |  | [optional] 
**Items** | [**DTOFilingItemDto[]**](DTOFilingItemDto.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DTOFilingExtractResultDto = Initialize-PSOpenAPIToolsDTOFilingExtractResultDto  -AccessionNumber null `
 -FormType null `
 -Items null
```

- Convert the resource to JSON
```powershell
$DTOFilingExtractResultDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

