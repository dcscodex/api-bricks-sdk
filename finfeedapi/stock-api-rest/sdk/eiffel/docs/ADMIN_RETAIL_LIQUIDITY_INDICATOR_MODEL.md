# ADMIN_RETAIL_LIQUIDITY_INDICATOR_MODEL

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | [**STRING_32**](STRING_32.md) | The stock symbol | [optional] [default to null]
**timestamp_nanos** | **INTEGER_64** | Original timestamp in nanoseconds since epoch | [optional] [default to null]
**timestamp** | [**DATE_TIME**](DATE_TIME.md) | Time when the retail liquidity indicator was recorded as DateTime | [optional] [default to null]
**retail_liquidity_indicator** | **INTEGER_32** | Retail liquidity indicator as byte value | [optional] [default to null]
**retail_liquidity_indicator_code** | [**STRING_32**](STRING_32.md) | Retail liquidity indicator as character string | [optional] [default to null]
**retail_liquidity_indicator_text** | [**STRING_32**](STRING_32.md) | Human-readable description of the retail liquidity indicator | [optional] [default to null]
**is_retail_indicator_not_applicable** | **BOOLEAN** | Indicates if the indicator is &#39;Not Applicable&#39; (&#39; &#39;/0x20). | [optional] [default to null]
**is_retail_indicator_buy_interest** | **BOOLEAN** | Indicates if there is &#39;Buy interest for Retail&#39; (&#39;A&#39;/0x41). | [optional] [default to null]
**is_retail_indicator_sell_interest** | **BOOLEAN** | Indicates if there is &#39;Sell interest for Retail&#39; (&#39;B&#39;/0x42). | [optional] [default to null]
**is_retail_indicator_buy_and_sell_interest** | **BOOLEAN** | Indicates if there is &#39;Buy and sell interest for Retail&#39; (&#39;C&#39;/0x43). | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


