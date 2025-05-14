# MvcProblemDetails


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] 
**title** | **str** |  | [optional] 
**status** | **int** |  | [optional] 
**detail** | **str** |  | [optional] 
**instance** | **str** |  | [optional] 

## Example

```python
from openapi_client.models.mvc_problem_details import MvcProblemDetails

# TODO update the JSON string below
json = "{}"
# create an instance of MvcProblemDetails from a JSON string
mvc_problem_details_instance = MvcProblemDetails.from_json(json)
# print the JSON string representation of the object
print(MvcProblemDetails.to_json())

# convert the object into a dict
mvc_problem_details_dict = mvc_problem_details_instance.to_dict()
# create an instance of MvcProblemDetails from a dict
mvc_problem_details_from_dict = MvcProblemDetails.from_dict(mvc_problem_details_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


