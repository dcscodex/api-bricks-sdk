# APIBricks.CoinAPI.MarketDataAPI.REST.V1.Model.V1QuoteTrade
Represents a quote trade data model.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SymbolId** | **string** | The symbol identifier. | [optional] 
**TimeExchange** | **DateTime** | The exchange time of the quote trade. | [optional] 
**TimeCoinapi** | **DateTime** | The CoinAPI time when the quote trade was received. | [optional] 
**AskPrice** | **double** | The best asking price. | [optional] 
**AskSize** | **double** | The volume resting on the best ask. If the value is equal to zero, then the size is unknown. | [optional] 
**BidPrice** | **double** | The best bidding price. | [optional] 
**BidSize** | **double** | The volume resting on the best bid. If the value is equal to zero, then the size is unknown. | [optional] 
**LastTrade** | [**V1LastTrade**](V1LastTrade.md) |  | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

