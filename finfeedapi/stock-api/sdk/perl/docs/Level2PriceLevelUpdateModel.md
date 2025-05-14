# WWW::OpenAPIClient::Object::Level2PriceLevelUpdateModel

## Load the model package
```perl
use WWW::OpenAPIClient::Object::Level2PriceLevelUpdateModel;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **string** | The stock symbol | [optional] 
**timestamp_nanos** | **int** | Original timestamp in nanoseconds since epoch | [optional] 
**timestamp** | **DATE_TIME** | Time when the price level update was recorded as DateTime | [optional] 
**is_side_buy** | **boolean** | Indicates if this is a price level update for the Buy Side. | [optional] 
**is_event_processing_complete** | **boolean** | Indicates if event processing is complete. | [optional] 
**size** | **int** | Aggregate quoted size at the price level | [optional] 
**price** | **double** | Price level as decimal | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


