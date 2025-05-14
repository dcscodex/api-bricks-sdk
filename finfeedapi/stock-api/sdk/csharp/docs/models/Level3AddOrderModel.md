# APIBricks.FinFeedAPI.STOCKAPI.REST.V1.Model.Level3AddOrderModel
Represents the response DTO for add order information

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Symbol** | **string** | The stock symbol | [optional] 
**TimestampNanos** | **long** | Original timestamp in nanoseconds since epoch | [optional] 
**Timestamp** | **DateTime** | Time when the order was added as DateTime (UTC) | [optional] 
**IsSideBuy** | **bool** | Indicates if this is a Buy order (&#39;8&#39;/0x38). | [optional] 
**Size** | **int** | Quoted size in number of shares | [optional] 
**Price** | **double** | Price as decimal | [optional] 
**OrderId** | **long** | Order identifier | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

