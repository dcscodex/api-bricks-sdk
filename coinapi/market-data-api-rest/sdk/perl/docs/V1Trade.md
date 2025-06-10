# WWW::OpenAPIClient::Object::V1Trade

## Load the model package
```perl
use WWW::OpenAPIClient::Object::V1Trade;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol_id** | **string** | The symbol identifier. | [optional] 
**time_exchange** | **DATE_TIME** | The time of trade reported by the exchange. | [optional] 
**time_coinapi** | **DATE_TIME** | The time when the trade was received by CoinAPI. | [optional] 
**uuid** | **string** | The unique identifier for the trade. | [optional] 
**price** | **double** | The price of the transaction. | [optional] 
**size** | **double** | The base asset amount traded in the transaction. | [optional] 
**taker_side** | **string** | The aggressor side of the transaction (BUY/SELL/BUY_ESTIMATED/SELL_ESTIMATED/UNKNOWN). | [optional] 
**id_trade** | **string** | The trade identifier. | [optional] 
**id_order_maker** | **string** | The order maker identifier. | [optional] 
**id_order_taker** | **string** | The order taker identifier. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


