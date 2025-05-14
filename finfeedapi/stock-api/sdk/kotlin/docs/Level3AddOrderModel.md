
# Level3AddOrderModel

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **symbol** | **kotlin.String** | The stock symbol |  [optional] |
| **timestampNanos** | **kotlin.Long** | Original timestamp in nanoseconds since epoch |  [optional] |
| **timestamp** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) | Time when the order was added as DateTime (UTC) |  [optional] |
| **isSideBuy** | **kotlin.Boolean** | Indicates if this is a Buy order (&#39;8&#39;/0x38). |  [optional] |
| **propertySize** | **kotlin.Int** | Quoted size in number of shares |  [optional] |
| **price** | **kotlin.Double** | Price as decimal |  [optional] |
| **orderId** | **kotlin.Long** | Order identifier |  [optional] |



