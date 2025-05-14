# MvcValidationProblemDetails


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] 
**title** | **str** |  | [optional] 
**status** | **int** |  | [optional] 
**detail** | **str** |  | [optional] 
**instance** | **str** |  | [optional] 
**errors** | **Dict[str, List[str]]** |  | [optional] 

## Example

```python
from openapi_client.models.mvc_validation_problem_details import MvcValidationProblemDetails

# TODO update the JSON string below
json = "{}"
# create an instance of MvcValidationProblemDetails from a JSON string
mvc_validation_problem_details_instance = MvcValidationProblemDetails.from_json(json)
# print the JSON string representation of the object
print(MvcValidationProblemDetails.to_json())

# convert the object into a dict
mvc_validation_problem_details_dict = mvc_validation_problem_details_instance.to_dict()
# create an instance of MvcValidationProblemDetails from a dict
mvc_validation_problem_details_from_dict = MvcValidationProblemDetails.from_dict(mvc_validation_problem_details_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


