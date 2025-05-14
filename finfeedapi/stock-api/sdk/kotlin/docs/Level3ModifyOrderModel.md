
# Level3ModifyOrderModel

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **symbol** | **kotlin.String** | The stock symbol |  [optional] |
| **timestampNanos** | **kotlin.Long** | Original timestamp in nanoseconds since epoch |  [optional] |
| **timestamp** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) | Time when the order was modified as DateTime (UTC) |  [optional] |
| **orderIdReference** | **kotlin.Long** | Order identifier reference |  [optional] |
| **isPriorityReset** | **kotlin.Boolean** | Indicates if priority is reseted |  [optional] |
| **propertySize** | **kotlin.Int** | New total quoted size in number of shares |  [optional] |
| **price** | **kotlin.Double** | Price as decimal |  [optional] |



