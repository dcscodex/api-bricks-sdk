# Level3ClearBookModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Symbol** | **String** | The stock symbol | [optional] 
**TimestampNanos** | **Int64** | Original timestamp in nanoseconds since epoch | [optional] 
**Timestamp** | **System.DateTime** | Time when the book was cleared as DateTime | [optional] 

## Examples

- Prepare the resource
```powershell
$Level3ClearBookModel = Initialize-PSOpenAPIToolsLevel3ClearBookModel  -Symbol null `
 -TimestampNanos null `
 -Timestamp null
```

- Convert the resource to JSON
```powershell
$Level3ClearBookModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

