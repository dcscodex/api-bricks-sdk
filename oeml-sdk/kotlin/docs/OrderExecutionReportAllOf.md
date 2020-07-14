
# OrderExecutionReportAllOf

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**clientOrderIdFormatExchange** | **kotlin.String** | The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it. | 
**amountOpen** | [**java.math.BigDecimal**](java.math.BigDecimal.md) | Quantity open for further execution. &#x60;amount_open&#x60; &#x3D; &#x60;amount_order&#x60; - &#x60;amount_filled&#x60; | 
**amountFilled** | [**java.math.BigDecimal**](java.math.BigDecimal.md) | Total quantity filled. | 
**status** | [**OrdStatus**](OrdStatus.md) |  | 
**timeOrder** | **kotlin.Array&lt;kotlin.Array&lt;kotlin.String&gt;&gt;** | Timestamped history of order status changes. | 
**exchangeOrderId** | **kotlin.String** | Unique identifier of the order assigned by the exchange or executing system. |  [optional]
**errorMessage** | **kotlin.String** | Error message |  [optional]



