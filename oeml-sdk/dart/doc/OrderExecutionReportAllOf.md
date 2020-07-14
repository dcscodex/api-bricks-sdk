# openapi.model.OrderExecutionReportAllOf

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**clientOrderIdFormatExchange** | **String** | The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it. | [default to null]
**exchangeOrderId** | **String** | Unique identifier of the order assigned by the exchange or executing system. | [optional] [default to null]
**amountOpen** | **num** | Quantity open for further execution. &#x60;amount_open&#x60; &#x3D; &#x60;amount_order&#x60; - &#x60;amount_filled&#x60; | [default to null]
**amountFilled** | **num** | Total quantity filled. | [default to null]
**status** | [**OrdStatus**](OrdStatus.md) |  | [default to null]
**timeOrder** | [**List&lt;List&lt;String&gt;&gt;**](List.md) | Timestamped history of order status changes. | [default to []]
**errorMessage** | **String** | Error message | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


