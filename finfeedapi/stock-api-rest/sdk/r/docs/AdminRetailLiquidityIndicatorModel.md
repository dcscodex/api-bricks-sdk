# openapi::AdminRetailLiquidityIndicatorModel

Represents the response DTO for retail liquidity indicator information

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **character** | The stock symbol | [optional] 
**timestamp_nanos** | **integer** | Original timestamp in nanoseconds since epoch | [optional] 
**timestamp** | **character** | Time when the retail liquidity indicator was recorded as DateTime | [optional] 
**retail_liquidity_indicator** | **integer** | Retail liquidity indicator as byte value | [optional] 
**retail_liquidity_indicator_code** | **character** | Retail liquidity indicator as character string | [optional] 
**retail_liquidity_indicator_text** | **character** | Human-readable description of the retail liquidity indicator | [optional] 
**is_retail_indicator_not_applicable** | **character** | Indicates if the indicator is &#39;Not Applicable&#39; (&#39; &#39;/0x20). | [optional] 
**is_retail_indicator_buy_interest** | **character** | Indicates if there is &#39;Buy interest for Retail&#39; (&#39;A&#39;/0x41). | [optional] 
**is_retail_indicator_sell_interest** | **character** | Indicates if there is &#39;Sell interest for Retail&#39; (&#39;B&#39;/0x42). | [optional] 
**is_retail_indicator_buy_and_sell_interest** | **character** | Indicates if there is &#39;Buy and sell interest for Retail&#39; (&#39;C&#39;/0x43). | [optional] 


