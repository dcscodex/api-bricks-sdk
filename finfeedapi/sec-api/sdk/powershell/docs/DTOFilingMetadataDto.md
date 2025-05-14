# DTOFilingMetadataDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Cik** | **Int64** |  | [optional] 
**AccessionNumber** | **String** |  | [optional] 
**FilingDate** | **System.DateTime** |  | [optional] 
**ReportDate** | **System.DateTime** |  | [optional] 
**AcceptanceDateTime** | **System.DateTime** |  | [optional] 
**Act** | **String** |  | [optional] 
**Form** | **String** |  | [optional] 
**FileNumber** | **String** |  | [optional] 
**FilmNumber** | **String** |  | [optional] 
**Items** | **String** |  | [optional] 
**CoreType** | **String** |  | [optional] 
**Size** | **Int32** |  | [optional] 
**IsXbrl** | **Boolean** |  | [optional] 
**IsInlineXbrl** | **Boolean** |  | [optional] 
**PrimaryDocument** | **String** |  | [optional] 
**PrimaryDocDescription** | **String** |  | [optional] 
**SourceFile** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DTOFilingMetadataDto = Initialize-PSOpenAPIToolsDTOFilingMetadataDto  -Cik null `
 -AccessionNumber null `
 -FilingDate null `
 -ReportDate null `
 -AcceptanceDateTime null `
 -Act null `
 -Form null `
 -FileNumber null `
 -FilmNumber null `
 -Items null `
 -CoreType null `
 -Size null `
 -IsXbrl null `
 -IsInlineXbrl null `
 -PrimaryDocument null `
 -PrimaryDocDescription null `
 -SourceFile null
```

- Convert the resource to JSON
```powershell
$DTOFilingMetadataDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

