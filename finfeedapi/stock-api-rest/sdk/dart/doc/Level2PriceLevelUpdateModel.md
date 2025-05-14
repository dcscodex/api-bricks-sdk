# openapi.model.Level2PriceLevelUpdateModel

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **String** | The stock symbol | [optional] 
**timestampNanos** | **int** | Original timestamp in nanoseconds since epoch | [optional] 
**timestamp** | [**DateTime**](DateTime.md) | Time when the price level update was recorded as DateTime | [optional] 
**isSideBuy** | **bool** | Indicates if this is a price level update for the Buy Side. | [optional] 
**isEventProcessingComplete** | **bool** | Indicates if event processing is complete. | [optional] 
**size** | **int** | Aggregate quoted size at the price level | [optional] 
**price** | **double** | Price level as decimal | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


