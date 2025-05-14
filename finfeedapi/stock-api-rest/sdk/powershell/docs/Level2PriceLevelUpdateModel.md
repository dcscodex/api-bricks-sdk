# Level2PriceLevelUpdateModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Symbol** | **String** | The stock symbol | [optional] 
**TimestampNanos** | **Int64** | Original timestamp in nanoseconds since epoch | [optional] 
**Timestamp** | **System.DateTime** | Time when the price level update was recorded as DateTime | [optional] 
**IsSideBuy** | **Boolean** | Indicates if this is a price level update for the Buy Side. | [optional] 
**IsEventProcessingComplete** | **Boolean** | Indicates if event processing is complete. | [optional] 
**Size** | **Int32** | Aggregate quoted size at the price level | [optional] 
**Price** | **Double** | Price level as decimal | [optional] 

## Examples

- Prepare the resource
```powershell
$Level2PriceLevelUpdateModel = Initialize-PSOpenAPIToolsLevel2PriceLevelUpdateModel  -Symbol null `
 -TimestampNanos null `
 -Timestamp null `
 -IsSideBuy null `
 -IsEventProcessingComplete null `
 -Size null `
 -Price null
```

- Convert the resource to JSON
```powershell
$Level2PriceLevelUpdateModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

