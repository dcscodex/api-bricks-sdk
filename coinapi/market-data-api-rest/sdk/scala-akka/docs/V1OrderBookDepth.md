

# OrderBookDepth

Represents the depth of an order book.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbolId** | **String** | The symbol identifier. |  [optional]
**timeExchange** | **OffsetDateTime** | The exchange time of the order book. |  [optional]
**timeCoinapi** | **OffsetDateTime** | The CoinAPI time when the order book was received. |  [optional]
**askLevels** | **Long** | The number of ask levels in the order book. |  [optional]
**bidLevels** | **Long** | The number of bid levels in the order book. |  [optional]
**askDepth** | **Double** | The depth of the ask side of the order book. |  [optional]
**bidDepth** | **Double** | The depth of the bid side of the order book. |  [optional]



