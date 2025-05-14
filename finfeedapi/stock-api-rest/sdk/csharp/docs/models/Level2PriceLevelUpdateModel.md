# APIBricks.FinFeedAPI.STOCKAPI.REST.V1.Model.Level2PriceLevelUpdateModel
Represents the response DTO for price level update information

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Symbol** | **string** | The stock symbol | [optional] 
**TimestampNanos** | **long** | Original timestamp in nanoseconds since epoch | [optional] 
**Timestamp** | **DateTime** | Time when the price level update was recorded as DateTime | [optional] 
**IsSideBuy** | **bool** | Indicates if this is a price level update for the Buy Side. | [optional] 
**IsEventProcessingComplete** | **bool** | Indicates if event processing is complete. | [optional] 
**Size** | **int** | Aggregate quoted size at the price level | [optional] 
**Price** | **double** | Price level as decimal | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

