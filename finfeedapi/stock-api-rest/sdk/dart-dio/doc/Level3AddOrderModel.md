# openapi.model.Level3AddOrderModel

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **String** | The stock symbol | [optional] 
**timestampNanos** | **int** | Original timestamp in nanoseconds since epoch | [optional] 
**timestamp** | [**DateTime**](DateTime.md) | Time when the order was added as DateTime (UTC) | [optional] 
**isSideBuy** | **bool** | Indicates if this is a Buy order ('8'/0x38). | [optional] 
**size** | **int** | Quoted size in number of shares | [optional] 
**price** | **double** | Price as decimal | [optional] 
**orderId** | **int** | Order identifier | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


