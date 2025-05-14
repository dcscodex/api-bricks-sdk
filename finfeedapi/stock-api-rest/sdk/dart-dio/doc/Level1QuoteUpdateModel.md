# openapi.model.Level1QuoteUpdateModel

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **String** | The stock symbol | [optional] 
**timestampNanos** | **int** | Original timestamp in nanoseconds since epoch | [optional] 
**timestamp** | [**DateTime**](DateTime.md) | Time when the quote update was recorded as DateTime | [optional] 
**isSymbolAvailable** | **bool** | Gets whether the symbol is available for trading  True if active, False if halted, paused, or otherwise not available | [optional] 
**isPrePostMarketSession** | **bool** | Gets whether the market session is regular or pre/post-market  True if pre/post-market session, False if regular market session | [optional] 
**askSize** | **int** | Ask size in number of shares | [optional] 
**askPrice** | **double** | Ask price as decimal | [optional] 
**bidPrice** | **double** | Bid price as decimal | [optional] 
**bidSize** | **int** | Bid size in number of shares | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


