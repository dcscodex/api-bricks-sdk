# DTOFilingMetadataDto

Represents the response for a single SEC filing metadata record.  Maps fields from the edgar_submissions table.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cik** | **int** |  | [optional] 
**accession_number** | **str** |  | [optional] 
**filing_date** | **date** |  | [optional] 
**report_date** | **date** |  | [optional] 
**acceptance_date_time** | **datetime** |  | [optional] 
**act** | **str** |  | [optional] 
**form** | **str** |  | [optional] 
**file_number** | **str** |  | [optional] 
**film_number** | **str** |  | [optional] 
**items** | **str** |  | [optional] 
**core_type** | **str** |  | [optional] 
**size** | **int** |  | [optional] 
**is_xbrl** | **bool** |  | [optional] 
**is_inline_xbrl** | **bool** |  | [optional] 
**primary_document** | **str** |  | [optional] 
**primary_doc_description** | **str** |  | [optional] 
**source_file** | **str** |  | [optional] 

## Example

```python
from api-bricks-sec-api-rest.models.dto_filing_metadata_dto import DTOFilingMetadataDto

# TODO update the JSON string below
json = "{}"
# create an instance of DTOFilingMetadataDto from a JSON string
dto_filing_metadata_dto_instance = DTOFilingMetadataDto.from_json(json)
# print the JSON string representation of the object
print(DTOFilingMetadataDto.to_json())

# convert the object into a dict
dto_filing_metadata_dto_dict = dto_filing_metadata_dto_instance.to_dict()
# create an instance of DTOFilingMetadataDto from a dict
dto_filing_metadata_dto_from_dict = DTOFilingMetadataDto.from_dict(dto_filing_metadata_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


