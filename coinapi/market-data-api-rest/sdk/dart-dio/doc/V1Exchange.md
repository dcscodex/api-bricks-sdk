# openapi.model.V1Exchange

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**exchangeId** | **String** | Gets or sets the exchange ID. | [optional] 
**website** | **String** | Gets or sets the website URL of the exchange. | [optional] 
**name** | **String** | Gets or sets the name of the exchange. | [optional] 
**dataStart** | **String** |  | [optional] 
**dataEnd** | **String** |  | [optional] 
**dataQuoteStart** | [**DateTime**](DateTime.md) | Gets or sets the start date of quote data. | [optional] 
**dataQuoteEnd** | [**DateTime**](DateTime.md) | Gets or sets the end date of quote data. | [optional] 
**dataOrderbookStart** | [**DateTime**](DateTime.md) | Gets or sets the start date of order book data. | [optional] 
**dataOrderbookEnd** | [**DateTime**](DateTime.md) | Gets or sets the end date of order book data. | [optional] 
**dataTradeStart** | [**DateTime**](DateTime.md) | Gets or sets the start date of trade data. | [optional] 
**dataTradeEnd** | [**DateTime**](DateTime.md) | Gets or sets the end date of trade data. | [optional] 
**dataTradeCount** | **int** | Gets or sets the number of trades. | [optional] 
**dataSymbolsCount** | **int** | Gets or sets the number of symbols. | [optional] 
**volume1hrsUsd** | **double** | Gets or sets the USD volume in the last 1 hour. | [optional] 
**volume1dayUsd** | **double** | Gets or sets the USD volume in the last 1 day. | [optional] 
**volume1mthUsd** | **double** | Gets or sets the USD volume in the last 1 month. | [optional] 
**metricId** | **BuiltList&lt;String&gt;** | Gets or sets the list of metric IDs. | [optional] 
**icons** | [**BuiltList&lt;V1Icon&gt;**](V1Icon.md) | Gets or sets the list of icons for the exchange. | [optional] 
**rank** | **double** | Rank of the exchange. | [optional] 
**integrationStatus** | **String** | Status of the integration | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


