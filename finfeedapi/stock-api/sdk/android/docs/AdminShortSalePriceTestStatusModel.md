

# AdminShortSalePriceTestStatusModel

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **String** | The stock symbol |  [optional]
**timestampNanos** | **Long** | Original timestamp in nanoseconds since epoch |  [optional]
**timestamp** | [**Date**](Date.md) | Time when the short sale price test status was recorded as DateTime |  [optional]
**shortSalePriceTestStatus** | **Integer** | Short sale price test status as byte value |  [optional]
**shortSalePriceTestStatusCode** | **String** | Short sale price test status as hex string |  [optional]
**shortSalePriceTestStatusText** | **String** | Human-readable description of the short sale price test status |  [optional]
**isShortSalePriceTestNotInEffect** | **Boolean** | Indicates if the short sale price test is not in effect |  [optional]
**isShortSalePriceTestInEffect** | **Boolean** | Indicates if the short sale price test is in effect |  [optional]
**detail** | **Integer** | Detail of the short sale price test as byte value |  [optional]
**detailCode** | **String** | Detail of the short sale price test as character string |  [optional]
**detailText** | **String** | Human-readable description of the short sale price test detail |  [optional]
**isDetailNoPriceTest** | **Boolean** | Indicates if there is no price test in place |  [optional]
**isDetailActivated** | **Boolean** | Indicates if the short sale price test restriction is in effect due to an intraday price drop |  [optional]
**isDetailContinued** | **Boolean** | Indicates if the short sale price test restriction remains in effect from prior day |  [optional]
**isDetailDeactivated** | **Boolean** | Indicates if the short sale price test restriction is deactivated |  [optional]
**isDetailNotAvailable** | **Boolean** | Indicates if the detail is not available |  [optional]




