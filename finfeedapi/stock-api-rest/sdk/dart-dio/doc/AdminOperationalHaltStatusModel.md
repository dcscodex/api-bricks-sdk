# openapi.model.AdminOperationalHaltStatusModel

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **String** | The stock symbol | [optional] 
**timestampNanos** | **int** | Original timestamp in nanoseconds since epoch | [optional] 
**timestamp** | [**DateTime**](DateTime.md) | Time when the operational halt status was recorded as DateTime | [optional] 
**operationalHaltStatus** | **int** | Operational halt status as byte value | [optional] 
**operationalHaltStatusCode** | **String** | Operational halt status as character string | [optional] 
**operationalHaltStatusText** | **String** | Human-readable description of the operational halt status | [optional] 
**isOperationallyHalted** | **bool** | Indicates if the status is 'IEX specific operational trading halt' ('O'/0x4f). | [optional] 
**isNotOperationallyHalted** | **bool** | Indicates if the status is 'Not operationally halted on IEX' ('N'/0x4e). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


