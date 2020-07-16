# OemlRestApi.OrderExecutionReportAllOf

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**clientOrderIdFormatExchange** | **String** | The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it. | 
**exchangeOrderId** | **String** | Unique identifier of the order assigned by the exchange or executing system. | [optional] 
**amountOpen** | **Number** | Quantity open for further execution. &#x60;amount_open&#x60; &#x3D; &#x60;amount_order&#x60; - &#x60;amount_filled&#x60; | 
**amountFilled** | **Number** | Total quantity filled. | 
**status** | [**OrdStatus**](OrdStatus.md) |  | 
**timeOrder** | **[[String]]** | Timestamped history of order status changes. | 
**errorMessage** | **String** | Error message | [optional] 


