# Level3AddOrderModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Symbol** | **String** | The stock symbol | [optional] 
**TimestampNanos** | **Int64** | Original timestamp in nanoseconds since epoch | [optional] 
**Timestamp** | **System.DateTime** | Time when the order was added as DateTime (UTC) | [optional] 
**IsSideBuy** | **Boolean** | Indicates if this is a Buy order (&#39;8&#39;/0x38). | [optional] 
**Size** | **Int32** | Quoted size in number of shares | [optional] 
**Price** | **Double** | Price as decimal | [optional] 
**OrderId** | **Int64** | Order identifier | [optional] 

## Examples

- Prepare the resource
```powershell
$Level3AddOrderModel = Initialize-PSOpenAPIToolsLevel3AddOrderModel  -Symbol null `
 -TimestampNanos null `
 -Timestamp null `
 -IsSideBuy null `
 -Size null `
 -Price null `
 -OrderId null
```

- Convert the resource to JSON
```powershell
$Level3AddOrderModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

