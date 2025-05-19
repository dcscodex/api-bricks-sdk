
# V1Asset

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **assetId** | **kotlin.String** | Gets or sets the asset ID. |  [optional] |
| **name** | **kotlin.String** | Gets or sets the name of the asset. |  [optional] |
| **typeIsCrypto** | **kotlin.Int** | Gets or sets a value indicating whether the asset is a cryptocurrency. |  [optional] |
| **dataQuoteStart** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) | Gets or sets the start date of quote data. |  [optional] |
| **dataQuoteEnd** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) | Gets or sets the end date of quote data. |  [optional] |
| **dataOrderbookStart** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) | Gets or sets the start date of order book data. |  [optional] |
| **dataOrderbookEnd** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) | Gets or sets the end date of order book data. |  [optional] |
| **dataTradeStart** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) | Gets or sets the start date of trade data. |  [optional] |
| **dataTradeEnd** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) | Gets or sets the end date of trade data. |  [optional] |
| **dataSymbolsCount** | **kotlin.Long** | Gets or sets the number of symbols. |  [optional] |
| **volume1hrsUsd** | **kotlin.Double** | Gets or sets the USD volume in the last 1 hour. |  [optional] |
| **volume1dayUsd** | **kotlin.Double** | Gets or sets the USD volume in the last 1 day. |  [optional] |
| **volume1mthUsd** | **kotlin.Double** | Gets or sets the USD volume in the last 1 month. |  [optional] |
| **priceUsd** | **kotlin.Double** | Gets or sets the USD price of the asset. |  [optional] |
| **idIcon** | [**java.util.UUID**](java.util.UUID.md) | Gets or sets the ID of the icon for the asset. |  [optional] |
| **supplyCurrent** | **kotlin.Double** | Gets or sets the current supply of the asset. |  [optional] |
| **supplyTotal** | **kotlin.Double** | Gets or sets the total supply of the asset. |  [optional] |
| **supplyMax** | **kotlin.Double** | Gets or sets the maximum supply of the asset. |  [optional] |
| **chainAddresses** | [**kotlin.collections.List&lt;V1ChainNetworkAddress&gt;**](V1ChainNetworkAddress.md) |  |  [optional] |
| **dataStart** | **kotlin.String** |  |  [optional] [readonly] |
| **dataEnd** | **kotlin.String** |  |  [optional] [readonly] |



