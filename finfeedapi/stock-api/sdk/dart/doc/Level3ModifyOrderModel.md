# openapi.model.Level3ModifyOrderModel

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **String** | The stock symbol | [optional] 
**timestampNanos** | **int** | Original timestamp in nanoseconds since epoch | [optional] 
**timestamp** | [**DateTime**](DateTime.md) | Time when the order was modified as DateTime (UTC) | [optional] 
**orderIdReference** | **int** | Order identifier reference | [optional] 
**isPriorityReset** | **bool** | Indicates if priority is reseted | [optional] 
**size** | **int** | New total quoted size in number of shares | [optional] 
**price** | **double** | Price as decimal | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


