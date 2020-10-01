# OrderExecutionReportAllOf

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ClientOrderIdFormatExchange** | **string** | The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it. | 
**ExchangeOrderId** | **string** | Unique identifier of the order assigned by the exchange or executing system. | [optional] 
**AmountOpen** | **float32** | Quantity open for further execution. &#x60;amount_open&#x60; &#x3D; &#x60;amount_order&#x60; - &#x60;amount_filled&#x60; | 
**AmountFilled** | **float32** | Total quantity filled. | 
**AvgPx** | **float32** | Calculated average price of all fills on this order. | [optional] 
**Status** | [**OrdStatus**](OrdStatus.md) |  | 
**StatusHistory** | [**[][]string**](array.md) | Timestamped history of order status changes. | [optional] 
**ErrorMessage** | **string** | Error message. | [optional] 
**Fills** | [**[]Fills**](Fills.md) | Relay fill information on working orders. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


