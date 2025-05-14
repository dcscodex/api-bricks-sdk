# openapi.model.AdminShortSalePriceTestStatusModel

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **String** | The stock symbol | [optional] 
**timestampNanos** | **int** | Original timestamp in nanoseconds since epoch | [optional] 
**timestamp** | [**DateTime**](DateTime.md) | Time when the short sale price test status was recorded as DateTime | [optional] 
**shortSalePriceTestStatus** | **int** | Short sale price test status as byte value | [optional] 
**shortSalePriceTestStatusCode** | **String** | Short sale price test status as hex string | [optional] 
**shortSalePriceTestStatusText** | **String** | Human-readable description of the short sale price test status | [optional] 
**isShortSalePriceTestNotInEffect** | **bool** | Indicates if the short sale price test is not in effect | [optional] 
**isShortSalePriceTestInEffect** | **bool** | Indicates if the short sale price test is in effect | [optional] 
**detail** | **int** | Detail of the short sale price test as byte value | [optional] 
**detailCode** | **String** | Detail of the short sale price test as character string | [optional] 
**detailText** | **String** | Human-readable description of the short sale price test detail | [optional] 
**isDetailNoPriceTest** | **bool** | Indicates if there is no price test in place | [optional] 
**isDetailActivated** | **bool** | Indicates if the short sale price test restriction is in effect due to an intraday price drop | [optional] 
**isDetailContinued** | **bool** | Indicates if the short sale price test restriction remains in effect from prior day | [optional] 
**isDetailDeactivated** | **bool** | Indicates if the short sale price test restriction is deactivated | [optional] 
**isDetailNotAvailable** | **bool** | Indicates if the detail is not available | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


