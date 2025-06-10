

# OrderBookBase

Represents the base model for order book data.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbolId** | **String** | The symbol identifier. |  [optional]
**timeExchange** | **OffsetDateTime** | The exchange time of the order book. |  [optional]
**timeCoinapi** | **OffsetDateTime** | The CoinAPI time when the order book was received. |  [optional]
**asks** | **AnyType** | The asks made by market makers. |  [optional]
**bids** | **AnyType** | The bids made by market makers. |  [optional]



