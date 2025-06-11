# # Level1QuoteUpdateModel

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **string** | The stock symbol | [optional]
**timestamp_nanos** | **int** | Original timestamp in nanoseconds since epoch | [optional]
**timestamp** | **\DateTime** | Time when the quote update was recorded as DateTime | [optional]
**is_symbol_available** | **bool** | Gets whether the symbol is available for trading True if active, False if halted, paused, or otherwise not available | [optional]
**is_pre_post_market_session** | **bool** | Gets whether the market session is regular or pre/post-market True if pre/post-market session, False if regular market session | [optional]
**ask_size** | **int** | Ask size in number of shares | [optional]
**ask_price** | **float** | Ask price as decimal | [optional]
**bid_price** | **float** | Bid price as decimal | [optional]
**bid_size** | **int** | Bid size in number of shares | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
