# MvcValidationProblemDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | [optional] 
**Title** | **String** |  | [optional] 
**Status** | **Int32** |  | [optional] 
**Detail** | **String** |  | [optional] 
**Instance** | **String** |  | [optional] 
**Errors** | [**System.Collections.Hashtable**](Array.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$MvcValidationProblemDetails = Initialize-PSOpenAPIToolsMvcValidationProblemDetails  -Type null `
 -Title null `
 -Status null `
 -Detail null `
 -Instance null `
 -Errors null
```

- Convert the resource to JSON
```powershell
$MvcValidationProblemDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

