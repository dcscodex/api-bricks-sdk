# OpenapiClient::AdminRetailLiquidityIndicatorModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol** | **String** | The stock symbol | [optional] |
| **timestamp_nanos** | **Integer** | Original timestamp in nanoseconds since epoch | [optional] |
| **timestamp** | **Time** | Time when the retail liquidity indicator was recorded as DateTime | [optional] |
| **retail_liquidity_indicator** | **Integer** | Retail liquidity indicator as byte value | [optional] |
| **retail_liquidity_indicator_code** | **String** | Retail liquidity indicator as character string | [optional] |
| **retail_liquidity_indicator_text** | **String** | Human-readable description of the retail liquidity indicator | [optional] |
| **is_retail_indicator_not_applicable** | **Boolean** | Indicates if the indicator is &#39;Not Applicable&#39; (&#39; &#39;/0x20). | [optional] |
| **is_retail_indicator_buy_interest** | **Boolean** | Indicates if there is &#39;Buy interest for Retail&#39; (&#39;A&#39;/0x41). | [optional] |
| **is_retail_indicator_sell_interest** | **Boolean** | Indicates if there is &#39;Sell interest for Retail&#39; (&#39;B&#39;/0x42). | [optional] |
| **is_retail_indicator_buy_and_sell_interest** | **Boolean** | Indicates if there is &#39;Buy and sell interest for Retail&#39; (&#39;C&#39;/0x43). | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AdminRetailLiquidityIndicatorModel.new(
  symbol: null,
  timestamp_nanos: null,
  timestamp: null,
  retail_liquidity_indicator: null,
  retail_liquidity_indicator_code: null,
  retail_liquidity_indicator_text: null,
  is_retail_indicator_not_applicable: null,
  is_retail_indicator_buy_interest: null,
  is_retail_indicator_sell_interest: null,
  is_retail_indicator_buy_and_sell_interest: null
)
```

