# # Level2PriceLevelUpdateModel

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **string** | The stock symbol | [optional]
**timestamp_nanos** | **int** | Original timestamp in nanoseconds since epoch | [optional]
**timestamp** | **\DateTime** | Time when the price level update was recorded as DateTime | [optional]
**is_side_buy** | **bool** | Indicates if this is a price level update for the Buy Side. | [optional]
**is_event_processing_complete** | **bool** | Indicates if event processing is complete. | [optional]
**size** | **int** | Aggregate quoted size at the price level | [optional]
**price** | **float** | Price level as decimal | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
