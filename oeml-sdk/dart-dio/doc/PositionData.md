# openapi.model.PositionData

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbolIdExchange** | **String** | Exchange symbol. | [optional] [default to null]
**symbolIdCoinapi** | **String** | CoinAPI symbol. | [optional] [default to null]
**avgEntryPrice** | **num** | Calculated average price of all fills on this position. | [optional] [default to null]
**quantity** | **num** | The current position quantity. | [optional] [default to null]
**side** | [**OrdSide**](OrdSide.md) |  | [optional] [default to null]
**unrealizedPnl** | **num** | Unrealised profit or loss (PNL) of this position. | [optional] [default to null]
**leverage** | **num** | Leverage for this position reported by the exchange. | [optional] [default to null]
**crossMargin** | **bool** | Is cross margin mode enable for this position? | [optional] [default to null]
**liquidationPrice** | **num** | Liquidation price. If mark price will reach this value, the position will be liquidated. | [optional] [default to null]
**rawData** | [**JsonObject**](.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


