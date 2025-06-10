# WWW::OpenAPIClient::Object::V1Quote

## Load the model package
```perl
use WWW::OpenAPIClient::Object::V1Quote;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol_id** | **string** | The symbol identifier. | [optional] 
**time_exchange** | **DATE_TIME** | The exchange time of the quote. | [optional] 
**time_coinapi** | **DATE_TIME** | The CoinAPI time when the quote was received. | [optional] 
**ask_price** | **double** | The best asking price. | [optional] 
**ask_size** | **double** | The volume resting on the best ask. If the value is equal to zero, then the size is unknown. | [optional] 
**bid_price** | **double** | The best bidding price. | [optional] 
**bid_size** | **double** | The volume resting on the best bid. If the value is equal to zero, then the size is unknown. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


