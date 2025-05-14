
# AdminShortSalePriceTestStatusModel

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **symbol** | **kotlin.String** | The stock symbol |  [optional] |
| **timestampNanos** | **kotlin.Long** | Original timestamp in nanoseconds since epoch |  [optional] |
| **timestamp** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) | Time when the short sale price test status was recorded as DateTime |  [optional] |
| **shortSalePriceTestStatus** | **kotlin.Int** | Short sale price test status as byte value |  [optional] |
| **shortSalePriceTestStatusCode** | **kotlin.String** | Short sale price test status as hex string |  [optional] |
| **shortSalePriceTestStatusText** | **kotlin.String** | Human-readable description of the short sale price test status |  [optional] |
| **isShortSalePriceTestNotInEffect** | **kotlin.Boolean** | Indicates if the short sale price test is not in effect |  [optional] |
| **isShortSalePriceTestInEffect** | **kotlin.Boolean** | Indicates if the short sale price test is in effect |  [optional] |
| **detail** | **kotlin.Int** | Detail of the short sale price test as byte value |  [optional] |
| **detailCode** | **kotlin.String** | Detail of the short sale price test as character string |  [optional] |
| **detailText** | **kotlin.String** | Human-readable description of the short sale price test detail |  [optional] |
| **isDetailNoPriceTest** | **kotlin.Boolean** | Indicates if there is no price test in place |  [optional] |
| **isDetailActivated** | **kotlin.Boolean** | Indicates if the short sale price test restriction is in effect due to an intraday price drop |  [optional] |
| **isDetailContinued** | **kotlin.Boolean** | Indicates if the short sale price test restriction remains in effect from prior day |  [optional] |
| **isDetailDeactivated** | **kotlin.Boolean** | Indicates if the short sale price test restriction is deactivated |  [optional] |
| **isDetailNotAvailable** | **kotlin.Boolean** | Indicates if the detail is not available |  [optional] |



