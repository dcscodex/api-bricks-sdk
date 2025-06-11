
# Level1QuoteUpdateModel

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **symbol** | **kotlin.String** | The stock symbol |  [optional] |
| **timestampNanos** | **kotlin.Long** | Original timestamp in nanoseconds since epoch |  [optional] |
| **timestamp** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) | Time when the quote update was recorded as DateTime |  [optional] |
| **isSymbolAvailable** | **kotlin.Boolean** | Gets whether the symbol is available for trading True if active, False if halted, paused, or otherwise not available |  [optional] |
| **isPrePostMarketSession** | **kotlin.Boolean** | Gets whether the market session is regular or pre/post-market True if pre/post-market session, False if regular market session |  [optional] |
| **askSize** | **kotlin.Int** | Ask size in number of shares |  [optional] |
| **askPrice** | **kotlin.Double** | Ask price as decimal |  [optional] |
| **bidPrice** | **kotlin.Double** | Bid price as decimal |  [optional] |
| **bidSize** | **kotlin.Int** | Bid size in number of shares |  [optional] |



