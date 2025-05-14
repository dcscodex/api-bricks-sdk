# Level3DeleteOrderModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Symbol** | **String** | The stock symbol | [optional] 
**TimestampNanos** | **Int64** | Original timestamp in nanoseconds since epoch | [optional] 
**Timestamp** | **System.DateTime** | Time when the order was deleted as DateTime | [optional] 
**OrderIdReference** | **Int64** | Order identifier reference | [optional] 

## Examples

- Prepare the resource
```powershell
$Level3DeleteOrderModel = Initialize-PSOpenAPIToolsLevel3DeleteOrderModel  -Symbol null `
 -TimestampNanos null `
 -Timestamp null `
 -OrderIdReference null
```

- Convert the resource to JSON
```powershell
$Level3DeleteOrderModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

