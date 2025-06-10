# openapi.model.V1OrderBook

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbolId** | **String** | The symbol identifier. | [optional] 
**timeExchange** | [**DateTime**](DateTime.md) | The exchange time of the order book. | [optional] 
**timeCoinapi** | [**DateTime**](DateTime.md) | The CoinAPI time when the order book was received. | [optional] 
**asks** | [**JsonObject**](.md) | The asks made by market makers. | [optional] 
**bids** | [**JsonObject**](.md) | The bids made by market makers. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


