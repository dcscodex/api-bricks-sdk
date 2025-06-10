# RestApi.V1QuoteTrade

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbolId** | **String** | The symbol identifier. | [optional] 
**timeExchange** | **Date** | The exchange time of the quote trade. | [optional] 
**timeCoinapi** | **Date** | The CoinAPI time when the quote trade was received. | [optional] 
**askPrice** | **Number** | The best asking price. | [optional] 
**askSize** | **Number** | The volume resting on the best ask. If the value is equal to zero, then the size is unknown. | [optional] 
**bidPrice** | **Number** | The best bidding price. | [optional] 
**bidSize** | **Number** | The volume resting on the best bid. If the value is equal to zero, then the size is unknown. | [optional] 
**lastTrade** | [**V1LastTrade**](V1LastTrade.md) |  | [optional] 


