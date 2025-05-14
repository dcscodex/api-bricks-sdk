# DTOSecFilingResultDto


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**accession_number** | **str** |  | [optional] 
**form_type** | **str** |  | [optional] 
**filing_date** | **date** |  | [optional] 
**company_name** | **str** |  | [optional] 
**cik** | **int** |  | [optional] 
**document_filename** | **str** |  | [optional] 
**document_description** | **str** |  | [optional] 
**source_file** | **str** |  | [optional] 

## Example

```python
from sec_api_historical_sdk.models.dto_sec_filing_result_dto import DTOSecFilingResultDto

# TODO update the JSON string below
json = "{}"
# create an instance of DTOSecFilingResultDto from a JSON string
dto_sec_filing_result_dto_instance = DTOSecFilingResultDto.from_json(json)
# print the JSON string representation of the object
print(DTOSecFilingResultDto.to_json())

# convert the object into a dict
dto_sec_filing_result_dto_dict = dto_sec_filing_result_dto_instance.to_dict()
# create an instance of DTOSecFilingResultDto from a dict
dto_sec_filing_result_dto_from_dict = DTOSecFilingResultDto.from_dict(dto_sec_filing_result_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


