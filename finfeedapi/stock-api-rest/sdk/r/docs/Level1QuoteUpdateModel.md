# openapi::Level1QuoteUpdateModel

Represents the response DTO for quote update information

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **character** | The stock symbol | [optional] 
**timestamp_nanos** | **integer** | Original timestamp in nanoseconds since epoch | [optional] 
**timestamp** | **character** | Time when the quote update was recorded as DateTime | [optional] 
**is_symbol_available** | **character** | Gets whether the symbol is available for trading True if active, False if halted, paused, or otherwise not available | [optional] 
**is_pre_post_market_session** | **character** | Gets whether the market session is regular or pre/post-market True if pre/post-market session, False if regular market session | [optional] 
**ask_size** | **integer** | Ask size in number of shares | [optional] 
**ask_price** | **numeric** | Ask price as decimal | [optional] 
**bid_price** | **numeric** | Bid price as decimal | [optional] 
**bid_size** | **integer** | Bid size in number of shares | [optional] 


