# WWW::OpenAPIClient::Object::V1OrderBookDepth

## Load the model package
```perl
use WWW::OpenAPIClient::Object::V1OrderBookDepth;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol_id** | **string** | The symbol identifier. | [optional] 
**time_exchange** | **DATE_TIME** | The exchange time of the order book. | [optional] 
**time_coinapi** | **DATE_TIME** | The CoinAPI time when the order book was received. | [optional] 
**ask_levels** | **int** | The number of ask levels in the order book. | [optional] 
**bid_levels** | **int** | The number of bid levels in the order book. | [optional] 
**ask_depth** | **double** | The depth of the ask side of the order book. | [optional] 
**bid_depth** | **double** | The depth of the bid side of the order book. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


