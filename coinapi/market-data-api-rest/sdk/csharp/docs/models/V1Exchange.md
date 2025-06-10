# APIBricks.CoinAPI.MarketDataAPI.REST.V1.Model.V1Exchange
Represents an exchange.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ExchangeId** | **string** | Gets or sets the exchange ID. | [optional] 
**Website** | **string** | Gets or sets the website URL of the exchange. | [optional] 
**Name** | **string** | Gets or sets the name of the exchange. | [optional] 
**DataStart** | **string** |  | [optional] [readonly] 
**DataEnd** | **string** |  | [optional] [readonly] 
**DataQuoteStart** | **DateTime** | Gets or sets the start date of quote data. | [optional] 
**DataQuoteEnd** | **DateTime** | Gets or sets the end date of quote data. | [optional] 
**DataOrderbookStart** | **DateTime** | Gets or sets the start date of order book data. | [optional] 
**DataOrderbookEnd** | **DateTime** | Gets or sets the end date of order book data. | [optional] 
**DataTradeStart** | **DateTime** | Gets or sets the start date of trade data. | [optional] 
**DataTradeEnd** | **DateTime** | Gets or sets the end date of trade data. | [optional] 
**DataTradeCount** | **long** | Gets or sets the number of trades. | [optional] 
**DataSymbolsCount** | **long** | Gets or sets the number of symbols. | [optional] 
**Volume1hrsUsd** | **double** | Gets or sets the USD volume in the last 1 hour. | [optional] 
**Volume1dayUsd** | **double** | Gets or sets the USD volume in the last 1 day. | [optional] 
**Volume1mthUsd** | **double** | Gets or sets the USD volume in the last 1 month. | [optional] 
**MetricId** | **List&lt;string&gt;** | Gets or sets the list of metric IDs. | [optional] 
**Icons** | [**List&lt;V1Icon&gt;**](V1Icon.md) | Gets or sets the list of icons for the exchange. | [optional] [readonly] 
**Rank** | **double** | Rank of the exchange. | [optional] 
**IntegrationStatus** | **string** | Status of the integration | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

