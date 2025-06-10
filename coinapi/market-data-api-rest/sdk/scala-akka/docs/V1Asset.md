

# Asset

Represents an asset.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**assetId** | **String** | Gets or sets the asset ID. |  [optional]
**name** | **String** | Gets or sets the name of the asset. |  [optional]
**typeIsCrypto** | **Int** | Gets or sets a value indicating whether the asset is a cryptocurrency. |  [optional]
**dataQuoteStart** | **OffsetDateTime** | Gets or sets the start date of quote data. |  [optional]
**dataQuoteEnd** | **OffsetDateTime** | Gets or sets the end date of quote data. |  [optional]
**dataOrderbookStart** | **OffsetDateTime** | Gets or sets the start date of order book data. |  [optional]
**dataOrderbookEnd** | **OffsetDateTime** | Gets or sets the end date of order book data. |  [optional]
**dataTradeStart** | **OffsetDateTime** | Gets or sets the start date of trade data. |  [optional]
**dataTradeEnd** | **OffsetDateTime** | Gets or sets the end date of trade data. |  [optional]
**dataSymbolsCount** | **Long** | Gets or sets the number of symbols. |  [optional]
**volume1hrsUsd** | **Double** | Gets or sets the USD volume in the last 1 hour. |  [optional]
**volume1dayUsd** | **Double** | Gets or sets the USD volume in the last 1 day. |  [optional]
**volume1mthUsd** | **Double** | Gets or sets the USD volume in the last 1 month. |  [optional]
**priceUsd** | **Double** | Gets or sets the USD price of the asset. |  [optional]
**idIcon** | **UUID** | Gets or sets the ID of the icon for the asset. |  [optional]
**supplyCurrent** | **Double** | Gets or sets the current supply of the asset. |  [optional]
**supplyTotal** | **Double** | Gets or sets the total supply of the asset. |  [optional]
**supplyMax** | **Double** | Gets or sets the maximum supply of the asset. |  [optional]
**chainAddresses** | [**Seq&lt;ChainNetworkAddress&gt;**](ChainNetworkAddress.md) |  |  [optional]
**dataStart** | **String** |  |  [optional] [readonly]
**dataEnd** | **String** |  |  [optional] [readonly]



