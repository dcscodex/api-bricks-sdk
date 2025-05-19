# openapi.model.V1Asset

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**assetId** | **String** | Gets or sets the asset ID. | [optional] 
**name** | **String** | Gets or sets the name of the asset. | [optional] 
**typeIsCrypto** | **int** | Gets or sets a value indicating whether the asset is a cryptocurrency. | [optional] 
**dataQuoteStart** | [**DateTime**](DateTime.md) | Gets or sets the start date of quote data. | [optional] 
**dataQuoteEnd** | [**DateTime**](DateTime.md) | Gets or sets the end date of quote data. | [optional] 
**dataOrderbookStart** | [**DateTime**](DateTime.md) | Gets or sets the start date of order book data. | [optional] 
**dataOrderbookEnd** | [**DateTime**](DateTime.md) | Gets or sets the end date of order book data. | [optional] 
**dataTradeStart** | [**DateTime**](DateTime.md) | Gets or sets the start date of trade data. | [optional] 
**dataTradeEnd** | [**DateTime**](DateTime.md) | Gets or sets the end date of trade data. | [optional] 
**dataSymbolsCount** | **int** | Gets or sets the number of symbols. | [optional] 
**volume1hrsUsd** | **double** | Gets or sets the USD volume in the last 1 hour. | [optional] 
**volume1dayUsd** | **double** | Gets or sets the USD volume in the last 1 day. | [optional] 
**volume1mthUsd** | **double** | Gets or sets the USD volume in the last 1 month. | [optional] 
**priceUsd** | **double** | Gets or sets the USD price of the asset. | [optional] 
**idIcon** | **String** | Gets or sets the ID of the icon for the asset. | [optional] 
**supplyCurrent** | **double** | Gets or sets the current supply of the asset. | [optional] 
**supplyTotal** | **double** | Gets or sets the total supply of the asset. | [optional] 
**supplyMax** | **double** | Gets or sets the maximum supply of the asset. | [optional] 
**chainAddresses** | [**BuiltList&lt;V1ChainNetworkAddress&gt;**](V1ChainNetworkAddress.md) |  | [optional] 
**dataStart** | **String** |  | [optional] 
**dataEnd** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


