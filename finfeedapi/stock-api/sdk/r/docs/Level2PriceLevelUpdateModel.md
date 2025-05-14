# openapi::Level2PriceLevelUpdateModel

Represents the response DTO for price level update information

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **character** | The stock symbol | [optional] 
**timestamp_nanos** | **integer** | Original timestamp in nanoseconds since epoch | [optional] 
**timestamp** | **character** | Time when the price level update was recorded as DateTime | [optional] 
**is_side_buy** | **character** | Indicates if this is a price level update for the Buy Side. | [optional] 
**is_event_processing_complete** | **character** | Indicates if event processing is complete. | [optional] 
**size** | **integer** | Aggregate quoted size at the price level | [optional] 
**price** | **numeric** | Price level as decimal | [optional] 


