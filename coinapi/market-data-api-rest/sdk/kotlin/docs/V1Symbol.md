
# V1Symbol

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **symbolId** | **kotlin.String** | The symbol identifier. |  [optional] |
| **exchangeId** | **kotlin.String** | The exchange identifier. |  [optional] |
| **symbolType** | **kotlin.String** | The symbol type. |  [optional] |
| **assetIdBase** | **kotlin.String** | The base asset identifier. |  [optional] |
| **assetIdQuote** | **kotlin.String** | The quote asset identifier. |  [optional] |
| **assetIdUnit** | **kotlin.String** | The unit asset identifier. |  [optional] |
| **futureContractUnit** | **kotlin.Double** | The contract unit for futures. |  [optional] |
| **futureContractUnitAsset** | **kotlin.String** | The asset used as the unit for futures contract. |  [optional] |
| **futureDeliveryTime** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) | The future delivery time for futures contract. |  [optional] |
| **optionTypeIsCall** | **kotlin.Boolean** | Indicates whether the option type is a call. |  [optional] |
| **optionStrikePrice** | **kotlin.Double** | The strike price for options. |  [optional] |
| **optionContractUnit** | **kotlin.Double** | The contract unit for options. |  [optional] |
| **optionExerciseStyle** | **kotlin.String** | The exercise style for options. |  [optional] |
| **optionExpirationTime** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) | The expiration time for options. |  [optional] |
| **contractDeliveryTime** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) | The delivery time for contracts. |  [optional] |
| **contractUnit** | **kotlin.Double** | The contract unit for contracts. |  [optional] |
| **contractUnitAsset** | **kotlin.String** | The asset used as the unit for contracts. |  [optional] |
| **contractId** | **kotlin.String** | The contract identifier. |  [optional] |
| **contractDisplayName** | **kotlin.String** | The display name of the contract. |  [optional] |
| **contractDisplayDescription** | **kotlin.String** | The display description of the contract. |  [optional] |
| **dataStart** | **kotlin.String** |  |  [optional] [readonly] |
| **dataEnd** | **kotlin.String** |  |  [optional] [readonly] |
| **dataQuoteStart** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) | The start date of quote data. |  [optional] |
| **dataQuoteEnd** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) | The end date of quote data. |  [optional] |
| **dataOrderbookStart** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) | The start date of order book data. |  [optional] |
| **dataOrderbookEnd** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) | The end date of order book data. |  [optional] |
| **dataTradeStart** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) | The start date of trade data. |  [optional] |
| **dataTradeEnd** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) | The end date of trade data. |  [optional] |
| **indexId** | **kotlin.String** | The index identifier. |  [optional] |
| **indexDisplayName** | **kotlin.String** | The display name of the index. |  [optional] |
| **indexDisplayDescription** | **kotlin.String** | The display description of the index. |  [optional] |
| **volume1hrs** | **kotlin.Double** | The volume in the last 1 hour. |  [optional] |
| **volume1hrsUsd** | **kotlin.Double** | The volume in USD in the last 1 hour. |  [optional] |
| **volume1day** | **kotlin.Double** | The volume in the last 1 day. |  [optional] |
| **volume1dayUsd** | **kotlin.Double** | The volume in USD in the last 1 day. |  [optional] |
| **volume1mth** | **kotlin.Double** | The volume in the last 1 month. |  [optional] |
| **volume1mthUsd** | **kotlin.Double** | The volume in USD in the last 1 month. |  [optional] |
| **price** | **kotlin.Double** | The price. |  [optional] |
| **symbolIdExchange** | **kotlin.String** | The symbol identifier in the exchange. |  [optional] |
| **assetIdBaseExchange** | **kotlin.String** | The base asset identifier in the exchange. |  [optional] |
| **assetIdQuoteExchange** | **kotlin.String** | The quote asset identifier in the exchange. |  [optional] |
| **pricePrecision** | **kotlin.Double** | The price precision. |  [optional] |
| **sizePrecision** | **kotlin.Double** | The size precision. |  [optional] |
| **rawKvp** | **kotlin.collections.Map&lt;kotlin.String, kotlin.String&gt;** | Not normalized raw kvp data. |  [optional] |
| **volumeToUsd** | **kotlin.Double** | Volume unit in USD. |  [optional] |



