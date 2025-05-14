# openapi.model.AdminSecurityEventModel

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **String** | The stock symbol | [optional] 
**timestampNanos** | **int** | Original timestamp in nanoseconds since epoch | [optional] 
**timestamp** | [**DateTime**](DateTime.md) | Time when the security event was recorded as DateTime | [optional] 
**securityEvent** | **int** | Security event as byte value | [optional] 
**securityEventCode** | **String** | Security event as character string ('O' or 'C') | [optional] 
**securityEventText** | **String** | Human-readable description of the security event | [optional] 
**isOpeningProcessComplete** | **bool** | Indicates if the security event is 'Opening Process Complete' ('O'/0x4f). | [optional] 
**isClosingProcessComplete** | **bool** | Indicates if the security event is 'Closing Process Complete' ('C'/0x43). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


