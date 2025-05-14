# Level3ModifyOrderModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Symbol** | **String** | The stock symbol | [optional] 
**TimestampNanos** | **Int64** | Original timestamp in nanoseconds since epoch | [optional] 
**Timestamp** | **System.DateTime** | Time when the order was modified as DateTime (UTC) | [optional] 
**OrderIdReference** | **Int64** | Order identifier reference | [optional] 
**IsPriorityReset** | **Boolean** | Indicates if priority is reseted | [optional] 
**Size** | **Int32** | New total quoted size in number of shares | [optional] 
**Price** | **Double** | Price as decimal | [optional] 

## Examples

- Prepare the resource
```powershell
$Level3ModifyOrderModel = Initialize-PSOpenAPIToolsLevel3ModifyOrderModel  -Symbol null `
 -TimestampNanos null `
 -Timestamp null `
 -OrderIdReference null `
 -IsPriorityReset null `
 -Size null `
 -Price null
```

- Convert the resource to JSON
```powershell
$Level3ModifyOrderModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

