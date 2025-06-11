# level1_quote_update_model_t

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **char \*** | The stock symbol | [optional] 
**timestamp_nanos** | **long** | Original timestamp in nanoseconds since epoch | [optional] 
**timestamp** | **char \*** | Time when the quote update was recorded as DateTime | [optional] 
**is_symbol_available** | **int** | Gets whether the symbol is available for trading True if active, False if halted, paused, or otherwise not available | [optional] 
**is_pre_post_market_session** | **int** | Gets whether the market session is regular or pre/post-market True if pre/post-market session, False if regular market session | [optional] 
**ask_size** | **int** | Ask size in number of shares | [optional] 
**ask_price** | **double** | Ask price as decimal | [optional] 
**bid_price** | **double** | Bid price as decimal | [optional] 
**bid_size** | **int** | Bid size in number of shares | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


