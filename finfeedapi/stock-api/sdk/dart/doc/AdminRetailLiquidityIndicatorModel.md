# openapi.model.AdminRetailLiquidityIndicatorModel

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **String** | The stock symbol | [optional] 
**timestampNanos** | **int** | Original timestamp in nanoseconds since epoch | [optional] 
**timestamp** | [**DateTime**](DateTime.md) | Time when the retail liquidity indicator was recorded as DateTime | [optional] 
**retailLiquidityIndicator** | **int** | Retail liquidity indicator as byte value | [optional] 
**retailLiquidityIndicatorCode** | **String** | Retail liquidity indicator as character string | [optional] 
**retailLiquidityIndicatorText** | **String** | Human-readable description of the retail liquidity indicator | [optional] 
**isRetailIndicatorNotApplicable** | **bool** | Indicates if the indicator is 'Not Applicable' (' '/0x20). | [optional] 
**isRetailIndicatorBuyInterest** | **bool** | Indicates if there is 'Buy interest for Retail' ('A'/0x41). | [optional] 
**isRetailIndicatorSellInterest** | **bool** | Indicates if there is 'Sell interest for Retail' ('B'/0x42). | [optional] 
**isRetailIndicatorBuyAndSellInterest** | **bool** | Indicates if there is 'Buy and sell interest for Retail' ('C'/0x43). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


