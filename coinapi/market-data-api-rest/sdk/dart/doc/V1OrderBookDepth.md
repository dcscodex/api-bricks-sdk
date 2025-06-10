# openapi.model.V1OrderBookDepth

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
**askLevels** | **int** | The number of ask levels in the order book. | [optional] 
**bidLevels** | **int** | The number of bid levels in the order book. | [optional] 
**askDepth** | **double** | The depth of the ask side of the order book. | [optional] 
**bidDepth** | **double** | The depth of the bid side of the order book. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


