# openapi.model.PositionData

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Unique position ID | [optional] [default to null]
**symbolExchange** | **String** | The contract for this position. | [optional] [default to null]
**symbolCoinapi** | **String** | The coinapi contract for this position. | [optional] [default to null]
**avgEntryPrice** | **num** |  | [optional] [default to null]
**quantity** | **num** | The current position amount in contracts. | [optional] [default to null]
**isBuy** | **bool** |  | [optional] [default to null]
**unrealisedPnL** | **num** | Unrealised PNL is all the unrealised profit or loss coming from your portfolio&#39;s open positions. | [optional] [default to null]
**leverage** | **num** | 1 / initMarginReq. | [optional] [default to null]
**crossMargin** | **bool** | True/false depending on whether you set cross margin on this position. | [optional] [default to null]
**liquidationPrice** | **num** | Once markPrice reaches this price, this position will be liquidated. | [optional] [default to null]
**rawData** | **String** |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


