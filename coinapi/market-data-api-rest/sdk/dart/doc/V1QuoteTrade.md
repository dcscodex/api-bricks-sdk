# openapi.model.V1QuoteTrade

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbolId** | **String** | The symbol identifier. | [optional] 
**timeExchange** | [**DateTime**](DateTime.md) | The exchange time of the quote trade. | [optional] 
**timeCoinapi** | [**DateTime**](DateTime.md) | The CoinAPI time when the quote trade was received. | [optional] 
**askPrice** | **double** | The best asking price. | [optional] 
**askSize** | **double** | The volume resting on the best ask. If the value is equal to zero, then the size is unknown. | [optional] 
**bidPrice** | **double** | The best bidding price. | [optional] 
**bidSize** | **double** | The volume resting on the best bid. If the value is equal to zero, then the size is unknown. | [optional] 
**lastTrade** | [**V1LastTrade**](V1LastTrade.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


