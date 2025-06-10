

# QuoteTrade

Represents a quote trade data model.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbolId** | **String** | The symbol identifier. |  [optional]
**timeExchange** | **OffsetDateTime** | The exchange time of the quote trade. |  [optional]
**timeCoinapi** | **OffsetDateTime** | The CoinAPI time when the quote trade was received. |  [optional]
**askPrice** | **Double** | The best asking price. |  [optional]
**askSize** | **Double** | The volume resting on the best ask. If the value is equal to zero, then the size is unknown. |  [optional]
**bidPrice** | **Double** | The best bidding price. |  [optional]
**bidSize** | **Double** | The volume resting on the best bid. If the value is equal to zero, then the size is unknown. |  [optional]
**lastTrade** | [**LastTrade**](LastTrade.md) |  |  [optional]



