# admin_retail_liquidity_indicator_model_t

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **char \*** | The stock symbol | [optional] 
**timestamp_nanos** | **long** | Original timestamp in nanoseconds since epoch | [optional] 
**timestamp** | **char \*** | Time when the retail liquidity indicator was recorded as DateTime | [optional] 
**retail_liquidity_indicator** | **int** | Retail liquidity indicator as byte value | [optional] 
**retail_liquidity_indicator_code** | **char \*** | Retail liquidity indicator as character string | [optional] 
**retail_liquidity_indicator_text** | **char \*** | Human-readable description of the retail liquidity indicator | [optional] 
**is_retail_indicator_not_applicable** | **int** | Indicates if the indicator is &#39;Not Applicable&#39; (&#39; &#39;/0x20). | [optional] 
**is_retail_indicator_buy_interest** | **int** | Indicates if there is &#39;Buy interest for Retail&#39; (&#39;A&#39;/0x41). | [optional] 
**is_retail_indicator_sell_interest** | **int** | Indicates if there is &#39;Sell interest for Retail&#39; (&#39;B&#39;/0x42). | [optional] 
**is_retail_indicator_buy_and_sell_interest** | **int** | Indicates if there is &#39;Buy and sell interest for Retail&#39; (&#39;C&#39;/0x43). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


