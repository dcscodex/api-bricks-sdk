

# V1Exchange

Represents an exchange.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**exchangeId** | **String** | Gets or sets the exchange ID. |  [optional] |
|**website** | **String** | Gets or sets the website URL of the exchange. |  [optional] |
|**name** | **String** | Gets or sets the name of the exchange. |  [optional] |
|**dataStart** | **String** |  |  [optional] [readonly] |
|**dataEnd** | **String** |  |  [optional] [readonly] |
|**dataQuoteStart** | **OffsetDateTime** | Gets or sets the start date of quote data. |  [optional] |
|**dataQuoteEnd** | **OffsetDateTime** | Gets or sets the end date of quote data. |  [optional] |
|**dataOrderbookStart** | **OffsetDateTime** | Gets or sets the start date of order book data. |  [optional] |
|**dataOrderbookEnd** | **OffsetDateTime** | Gets or sets the end date of order book data. |  [optional] |
|**dataTradeStart** | **OffsetDateTime** | Gets or sets the start date of trade data. |  [optional] |
|**dataTradeEnd** | **OffsetDateTime** | Gets or sets the end date of trade data. |  [optional] |
|**dataTradeCount** | **Long** | Gets or sets the number of trades. |  [optional] |
|**dataSymbolsCount** | **Long** | Gets or sets the number of symbols. |  [optional] |
|**volume1hrsUsd** | **Double** | Gets or sets the USD volume in the last 1 hour. |  [optional] |
|**volume1dayUsd** | **Double** | Gets or sets the USD volume in the last 1 day. |  [optional] |
|**volume1mthUsd** | **Double** | Gets or sets the USD volume in the last 1 month. |  [optional] |
|**metricId** | **List&lt;String&gt;** | Gets or sets the list of metric IDs. |  [optional] |
|**icons** | [**List&lt;V1Icon&gt;**](V1Icon.md) | Gets or sets the list of icons for the exchange. |  [optional] [readonly] |
|**rank** | **Double** | Rank of the exchange. |  [optional] |
|**integrationStatus** | **String** | Status of the integration |  [optional] |



