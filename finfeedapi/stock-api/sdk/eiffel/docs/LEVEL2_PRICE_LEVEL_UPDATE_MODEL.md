# LEVEL2_PRICE_LEVEL_UPDATE_MODEL

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | [**STRING_32**](STRING_32.md) | The stock symbol | [optional] [default to null]
**timestamp_nanos** | **INTEGER_64** | Original timestamp in nanoseconds since epoch | [optional] [default to null]
**timestamp** | [**DATE_TIME**](DATE_TIME.md) | Time when the price level update was recorded as DateTime | [optional] [default to null]
**is_side_buy** | **BOOLEAN** | Indicates if this is a price level update for the Buy Side. | [optional] [default to null]
**is_event_processing_complete** | **BOOLEAN** | Indicates if event processing is complete. | [optional] [default to null]
**size** | **INTEGER_32** | Aggregate quoted size at the price level | [optional] [default to null]
**price** | **REAL_64** | Price level as decimal | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


