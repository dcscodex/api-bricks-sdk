# DTOFilingItemDto


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**item_number** | **str** |  | [optional] 
**item_title** | **str** |  | [optional] 
**content** | **str** |  | [optional] 

## Example

```python
from api-bricks-sec-api-rest.models.dto_filing_item_dto import DTOFilingItemDto

# TODO update the JSON string below
json = "{}"
# create an instance of DTOFilingItemDto from a JSON string
dto_filing_item_dto_instance = DTOFilingItemDto.from_json(json)
# print the JSON string representation of the object
print(DTOFilingItemDto.to_json())

# convert the object into a dict
dto_filing_item_dto_dict = dto_filing_item_dto_instance.to_dict()
# create an instance of DTOFilingItemDto from a dict
dto_filing_item_dto_from_dict = DTOFilingItemDto.from_dict(dto_filing_item_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


