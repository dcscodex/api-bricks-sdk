
# Level2PriceLevelUpdateModel

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **symbol** | **kotlin.String** | The stock symbol |  [optional] |
| **timestampNanos** | **kotlin.Long** | Original timestamp in nanoseconds since epoch |  [optional] |
| **timestamp** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) | Time when the price level update was recorded as DateTime |  [optional] |
| **isSideBuy** | **kotlin.Boolean** | Indicates if this is a price level update for the Buy Side. |  [optional] |
| **isEventProcessingComplete** | **kotlin.Boolean** | Indicates if event processing is complete. |  [optional] |
| **propertySize** | **kotlin.Int** | Aggregate quoted size at the price level |  [optional] |
| **price** | **kotlin.Double** | Price level as decimal |  [optional] |



