

# V1Symbol

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbolId** | **String** | The symbol identifier. |  [optional]
**exchangeId** | **String** | The exchange identifier. |  [optional]
**symbolType** | **String** | The symbol type. |  [optional]
**assetIdBase** | **String** | The base asset identifier. |  [optional]
**assetIdQuote** | **String** | The quote asset identifier. |  [optional]
**assetIdUnit** | **String** | The unit asset identifier. |  [optional]
**futureContractUnit** | **Double** | The contract unit for futures. |  [optional]
**futureContractUnitAsset** | **String** | The asset used as the unit for futures contract. |  [optional]
**futureDeliveryTime** | [**Date**](Date.md) | The future delivery time for futures contract. |  [optional]
**optionTypeIsCall** | **Boolean** | Indicates whether the option type is a call. |  [optional]
**optionStrikePrice** | **Double** | The strike price for options. |  [optional]
**optionContractUnit** | **Double** | The contract unit for options. |  [optional]
**optionExerciseStyle** | **String** | The exercise style for options. |  [optional]
**optionExpirationTime** | [**Date**](Date.md) | The expiration time for options. |  [optional]
**contractDeliveryTime** | [**Date**](Date.md) | The delivery time for contracts. |  [optional]
**contractUnit** | **Double** | The contract unit for contracts. |  [optional]
**contractUnitAsset** | **String** | The asset used as the unit for contracts. |  [optional]
**contractId** | **String** | The contract identifier. |  [optional]
**contractDisplayName** | **String** | The display name of the contract. |  [optional]
**contractDisplayDescription** | **String** | The display description of the contract. |  [optional]
**dataStart** | **String** |  |  [optional] [readonly]
**dataEnd** | **String** |  |  [optional] [readonly]
**dataQuoteStart** | [**Date**](Date.md) | The start date of quote data. |  [optional]
**dataQuoteEnd** | [**Date**](Date.md) | The end date of quote data. |  [optional]
**dataOrderbookStart** | [**Date**](Date.md) | The start date of order book data. |  [optional]
**dataOrderbookEnd** | [**Date**](Date.md) | The end date of order book data. |  [optional]
**dataTradeStart** | [**Date**](Date.md) | The start date of trade data. |  [optional]
**dataTradeEnd** | [**Date**](Date.md) | The end date of trade data. |  [optional]
**indexId** | **String** | The index identifier. |  [optional]
**indexDisplayName** | **String** | The display name of the index. |  [optional]
**indexDisplayDescription** | **String** | The display description of the index. |  [optional]
**volume1hrs** | **Double** | The volume in the last 1 hour. |  [optional]
**volume1hrsUsd** | **Double** | The volume in USD in the last 1 hour. |  [optional]
**volume1day** | **Double** | The volume in the last 1 day. |  [optional]
**volume1dayUsd** | **Double** | The volume in USD in the last 1 day. |  [optional]
**volume1mth** | **Double** | The volume in the last 1 month. |  [optional]
**volume1mthUsd** | **Double** | The volume in USD in the last 1 month. |  [optional]
**price** | **Double** | The price. |  [optional]
**symbolIdExchange** | **String** | The symbol identifier in the exchange. |  [optional]
**assetIdBaseExchange** | **String** | The base asset identifier in the exchange. |  [optional]
**assetIdQuoteExchange** | **String** | The quote asset identifier in the exchange. |  [optional]
**pricePrecision** | **Double** | The price precision. |  [optional]
**sizePrecision** | **Double** | The size precision. |  [optional]
**rawKvp** | **Map&lt;String, String&gt;** | Not normalized raw kvp data. |  [optional]
**volumeToUsd** | **Double** | Volume unit in USD. |  [optional]




