# APIBricks.FinFeedAPI.STOCKAPI.REST.V1.Model.Level1QuoteUpdateModel
Represents the response DTO for quote update information

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Symbol** | **string** | The stock symbol | [optional] 
**TimestampNanos** | **long** | Original timestamp in nanoseconds since epoch | [optional] 
**Timestamp** | **DateTime** | Time when the quote update was recorded as DateTime | [optional] 
**IsSymbolAvailable** | **bool** | Gets whether the symbol is available for trading  True if active, False if halted, paused, or otherwise not available | [optional] 
**IsPrePostMarketSession** | **bool** | Gets whether the market session is regular or pre/post-market  True if pre/post-market session, False if regular market session | [optional] 
**AskSize** | **int** | Ask size in number of shares | [optional] 
**AskPrice** | **double** | Ask price as decimal | [optional] 
**BidPrice** | **double** | Bid price as decimal | [optional] 
**BidSize** | **int** | Bid size in number of shares | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

