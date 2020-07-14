# openapi.model.BalanceData

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**assetIdExchange** | **String** | Exchange currency code. | [optional] [default to null]
**assetIdCoinapi** | **String** | CoinAPI currency code. | [optional] [default to null]
**balance** | **double** | Value of the current total currency balance on the exchange. | [optional] [default to null]
**available** | **double** | Value of the current available currency balance on the exchange that can be used as collateral. | [optional] [default to null]
**locked** | **double** | Value of the current locked currency balance by the exchange. | [optional] [default to null]
**lastUpdatedBy** | **String** | Source of the last modification.  | [optional] [default to null]
**rateUsd** | **double** | Current exchange rate to the USD for the single unit of the currency.  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


