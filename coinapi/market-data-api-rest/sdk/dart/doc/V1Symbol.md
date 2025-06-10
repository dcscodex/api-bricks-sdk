# openapi.model.V1Symbol

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbolId** | **String** | The symbol identifier. | [optional] 
**exchangeId** | **String** | The exchange identifier. | [optional] 
**symbolType** | **String** | The symbol type. | [optional] 
**assetIdBase** | **String** | The base asset identifier. | [optional] 
**assetIdQuote** | **String** | The quote asset identifier. | [optional] 
**assetIdUnit** | **String** | The unit asset identifier. | [optional] 
**futureContractUnit** | **double** | The contract unit for futures. | [optional] 
**futureContractUnitAsset** | **String** | The asset used as the unit for futures contract. | [optional] 
**futureDeliveryTime** | [**DateTime**](DateTime.md) | The future delivery time for futures contract. | [optional] 
**optionTypeIsCall** | **bool** | Indicates whether the option type is a call. | [optional] 
**optionStrikePrice** | **double** | The strike price for options. | [optional] 
**optionContractUnit** | **double** | The contract unit for options. | [optional] 
**optionExerciseStyle** | **String** | The exercise style for options. | [optional] 
**optionExpirationTime** | [**DateTime**](DateTime.md) | The expiration time for options. | [optional] 
**contractDeliveryTime** | [**DateTime**](DateTime.md) | The delivery time for contracts. | [optional] 
**contractUnit** | **double** | The contract unit for contracts. | [optional] 
**contractUnitAsset** | **String** | The asset used as the unit for contracts. | [optional] 
**contractId** | **String** | The contract identifier. | [optional] 
**contractDisplayName** | **String** | The display name of the contract. | [optional] 
**contractDisplayDescription** | **String** | The display description of the contract. | [optional] 
**dataStart** | **String** |  | [optional] [readonly] 
**dataEnd** | **String** |  | [optional] [readonly] 
**dataQuoteStart** | [**DateTime**](DateTime.md) | The start date of quote data. | [optional] 
**dataQuoteEnd** | [**DateTime**](DateTime.md) | The end date of quote data. | [optional] 
**dataOrderbookStart** | [**DateTime**](DateTime.md) | The start date of order book data. | [optional] 
**dataOrderbookEnd** | [**DateTime**](DateTime.md) | The end date of order book data. | [optional] 
**dataTradeStart** | [**DateTime**](DateTime.md) | The start date of trade data. | [optional] 
**dataTradeEnd** | [**DateTime**](DateTime.md) | The end date of trade data. | [optional] 
**indexId** | **String** | The index identifier. | [optional] 
**indexDisplayName** | **String** | The display name of the index. | [optional] 
**indexDisplayDescription** | **String** | The display description of the index. | [optional] 
**volume1hrs** | **double** | The volume in the last 1 hour. | [optional] 
**volume1hrsUsd** | **double** | The volume in USD in the last 1 hour. | [optional] 
**volume1day** | **double** | The volume in the last 1 day. | [optional] 
**volume1dayUsd** | **double** | The volume in USD in the last 1 day. | [optional] 
**volume1mth** | **double** | The volume in the last 1 month. | [optional] 
**volume1mthUsd** | **double** | The volume in USD in the last 1 month. | [optional] 
**price** | **double** | The price. | [optional] 
**symbolIdExchange** | **String** | The symbol identifier in the exchange. | [optional] 
**assetIdBaseExchange** | **String** | The base asset identifier in the exchange. | [optional] 
**assetIdQuoteExchange** | **String** | The quote asset identifier in the exchange. | [optional] 
**pricePrecision** | **double** | The price precision. | [optional] 
**sizePrecision** | **double** | The size precision. | [optional] 
**rawKvp** | **Map<String, String>** | Not normalized raw kvp data. | [optional] [default to const {}]
**volumeToUsd** | **double** | Volume unit in USD. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


