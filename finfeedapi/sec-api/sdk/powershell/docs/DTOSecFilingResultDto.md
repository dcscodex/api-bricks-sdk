# DTOSecFilingResultDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccessionNumber** | **String** |  | [optional] 
**FormType** | **String** |  | [optional] 
**FilingDate** | **System.DateTime** |  | [optional] 
**CompanyName** | **String** |  | [optional] 
**Cik** | **Int64** |  | [optional] 
**DocumentFilename** | **String** |  | [optional] 
**DocumentDescription** | **String** |  | [optional] 
**SourceFile** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DTOSecFilingResultDto = Initialize-PSOpenAPIToolsDTOSecFilingResultDto  -AccessionNumber null `
 -FormType null `
 -FilingDate null `
 -CompanyName null `
 -Cik null `
 -DocumentFilename null `
 -DocumentDescription null `
 -SourceFile null
```

- Convert the resource to JSON
```powershell
$DTOSecFilingResultDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

