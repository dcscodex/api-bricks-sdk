# LEVEL1_QUOTE_UPDATE_MODEL

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | [**STRING_32**](STRING_32.md) | The stock symbol | [optional] [default to null]
**timestamp_nanos** | **INTEGER_64** | Original timestamp in nanoseconds since epoch | [optional] [default to null]
**timestamp** | [**DATE_TIME**](DATE_TIME.md) | Time when the quote update was recorded as DateTime | [optional] [default to null]
**is_symbol_available** | **BOOLEAN** | Gets whether the symbol is available for trading  True if active, False if halted, paused, or otherwise not available | [optional] [default to null]
**is_pre_post_market_session** | **BOOLEAN** | Gets whether the market session is regular or pre/post-market  True if pre/post-market session, False if regular market session | [optional] [default to null]
**ask_size** | **INTEGER_32** | Ask size in number of shares | [optional] [default to null]
**ask_price** | **REAL_64** | Ask price as decimal | [optional] [default to null]
**bid_price** | **REAL_64** | Bid price as decimal | [optional] [default to null]
**bid_size** | **INTEGER_32** | Bid size in number of shares | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


