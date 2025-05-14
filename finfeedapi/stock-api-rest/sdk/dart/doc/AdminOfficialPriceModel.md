# openapi.model.AdminOfficialPriceModel

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **String** | The stock symbol | [optional] 
**timestampNanos** | **int** | Original timestamp in nanoseconds since epoch | [optional] 
**timestamp** | [**DateTime**](DateTime.md) | Time when the official price was recorded as DateTime | [optional] 
**priceType** | **int** | Type of price as byte value | [optional] 
**priceTypeCode** | **String** | Type of price as character string | [optional] 
**priceTypeText** | **String** | Human-readable description of the price type | [optional] 
**isPriceTypeOpening** | **bool** | Indicates if the price type is 'IEX Official Opening Price' ('Q'/0x51). | [optional] 
**isPriceTypeClosing** | **bool** | Indicates if the price type is 'IEX Official Closing Price' ('M'/0x4d). | [optional] 
**officialPrice** | **double** | Official price as decimal | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


