# WWW::OpenAPIClient::Object::Level1QuoteUpdateModel

## Load the model package
```perl
use WWW::OpenAPIClient::Object::Level1QuoteUpdateModel;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **string** | The stock symbol | [optional] 
**timestamp_nanos** | **int** | Original timestamp in nanoseconds since epoch | [optional] 
**timestamp** | **DATE_TIME** | Time when the quote update was recorded as DateTime | [optional] 
**is_symbol_available** | **boolean** | Gets whether the symbol is available for trading  True if active, False if halted, paused, or otherwise not available | [optional] 
**is_pre_post_market_session** | **boolean** | Gets whether the market session is regular or pre/post-market  True if pre/post-market session, False if regular market session | [optional] 
**ask_size** | **int** | Ask size in number of shares | [optional] 
**ask_price** | **double** | Ask price as decimal | [optional] 
**bid_price** | **double** | Bid price as decimal | [optional] 
**bid_size** | **int** | Bid size in number of shares | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


