# APIBricks.FinFeedAPI.STOCKAPI.REST.V1.Model.Level3ModifyOrderModel
Represents the response DTO for order modify information

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Symbol** | **string** | The stock symbol | [optional] 
**TimestampNanos** | **long** | Original timestamp in nanoseconds since epoch | [optional] 
**Timestamp** | **DateTime** | Time when the order was modified as DateTime (UTC) | [optional] 
**OrderIdReference** | **long** | Order identifier reference | [optional] 
**IsPriorityReset** | **bool** | Indicates if priority is reseted | [optional] 
**Size** | **int** | New total quoted size in number of shares | [optional] 
**Price** | **double** | Price as decimal | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

