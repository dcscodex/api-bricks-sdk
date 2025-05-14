# DTOFilingExtractResultDto

Represents the result of a filing extraction.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**accession_number** | **str** |  | [optional] 
**form_type** | **str** |  | [optional] 
**items** | [**List[DTOFilingItemDto]**](DTOFilingItemDto.md) |  | [optional] 

## Example

```python
from sec_api_historical_sdk.models.dto_filing_extract_result_dto import DTOFilingExtractResultDto

# TODO update the JSON string below
json = "{}"
# create an instance of DTOFilingExtractResultDto from a JSON string
dto_filing_extract_result_dto_instance = DTOFilingExtractResultDto.from_json(json)
# print the JSON string representation of the object
print(DTOFilingExtractResultDto.to_json())

# convert the object into a dict
dto_filing_extract_result_dto_dict = dto_filing_extract_result_dto_instance.to_dict()
# create an instance of DTOFilingExtractResultDto from a dict
dto_filing_extract_result_dto_from_dict = DTOFilingExtractResultDto.from_dict(dto_filing_extract_result_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


