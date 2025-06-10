# openapi.model.V1Trade

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbolId** | **String** | The symbol identifier. | [optional] 
**timeExchange** | [**DateTime**](DateTime.md) | The time of trade reported by the exchange. | [optional] 
**timeCoinapi** | [**DateTime**](DateTime.md) | The time when the trade was received by CoinAPI. | [optional] 
**uuid** | **String** | The unique identifier for the trade. | [optional] 
**price** | **double** | The price of the transaction. | [optional] 
**size** | **double** | The base asset amount traded in the transaction. | [optional] 
**takerSide** | **String** | The aggressor side of the transaction (BUY/SELL/BUY_ESTIMATED/SELL_ESTIMATED/UNKNOWN). | [optional] 
**idTrade** | **String** | The trade identifier. | [optional] 
**idOrderMaker** | **String** | The order maker identifier. | [optional] 
**idOrderTaker** | **String** | The order taker identifier. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


