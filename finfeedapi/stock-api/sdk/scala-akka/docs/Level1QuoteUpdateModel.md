

# QuoteUpdateModel

Represents the response DTO for quote update information

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **String** | The stock symbol |  [optional]
**timestampNanos** | **Long** | Original timestamp in nanoseconds since epoch |  [optional]
**timestamp** | **OffsetDateTime** | Time when the quote update was recorded as DateTime |  [optional]
**isSymbolAvailable** | **Boolean** | Gets whether the symbol is available for trading  True if active, False if halted, paused, or otherwise not available |  [optional]
**isPrePostMarketSession** | **Boolean** | Gets whether the market session is regular or pre/post-market  True if pre/post-market session, False if regular market session |  [optional]
**askSize** | **Int** | Ask size in number of shares |  [optional]
**askPrice** | **Double** | Ask price as decimal |  [optional]
**bidPrice** | **Double** | Bid price as decimal |  [optional]
**bidSize** | **Int** | Bid size in number of shares |  [optional]



