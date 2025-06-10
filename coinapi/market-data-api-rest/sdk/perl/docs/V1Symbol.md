# WWW::OpenAPIClient::Object::V1Symbol

## Load the model package
```perl
use WWW::OpenAPIClient::Object::V1Symbol;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol_id** | **string** | The symbol identifier. | [optional] 
**exchange_id** | **string** | The exchange identifier. | [optional] 
**symbol_type** | **string** | The symbol type. | [optional] 
**asset_id_base** | **string** | The base asset identifier. | [optional] 
**asset_id_quote** | **string** | The quote asset identifier. | [optional] 
**asset_id_unit** | **string** | The unit asset identifier. | [optional] 
**future_contract_unit** | **double** | The contract unit for futures. | [optional] 
**future_contract_unit_asset** | **string** | The asset used as the unit for futures contract. | [optional] 
**future_delivery_time** | **DATE_TIME** | The future delivery time for futures contract. | [optional] 
**option_type_is_call** | **boolean** | Indicates whether the option type is a call. | [optional] 
**option_strike_price** | **double** | The strike price for options. | [optional] 
**option_contract_unit** | **double** | The contract unit for options. | [optional] 
**option_exercise_style** | **string** | The exercise style for options. | [optional] 
**option_expiration_time** | **DATE_TIME** | The expiration time for options. | [optional] 
**contract_delivery_time** | **DATE_TIME** | The delivery time for contracts. | [optional] 
**contract_unit** | **double** | The contract unit for contracts. | [optional] 
**contract_unit_asset** | **string** | The asset used as the unit for contracts. | [optional] 
**contract_id** | **string** | The contract identifier. | [optional] 
**contract_display_name** | **string** | The display name of the contract. | [optional] 
**contract_display_description** | **string** | The display description of the contract. | [optional] 
**data_start** | **string** |  | [optional] [readonly] 
**data_end** | **string** |  | [optional] [readonly] 
**data_quote_start** | **DATE_TIME** | The start date of quote data. | [optional] 
**data_quote_end** | **DATE_TIME** | The end date of quote data. | [optional] 
**data_orderbook_start** | **DATE_TIME** | The start date of order book data. | [optional] 
**data_orderbook_end** | **DATE_TIME** | The end date of order book data. | [optional] 
**data_trade_start** | **DATE_TIME** | The start date of trade data. | [optional] 
**data_trade_end** | **DATE_TIME** | The end date of trade data. | [optional] 
**index_id** | **string** | The index identifier. | [optional] 
**index_display_name** | **string** | The display name of the index. | [optional] 
**index_display_description** | **string** | The display description of the index. | [optional] 
**volume_1hrs** | **double** | The volume in the last 1 hour. | [optional] 
**volume_1hrs_usd** | **double** | The volume in USD in the last 1 hour. | [optional] 
**volume_1day** | **double** | The volume in the last 1 day. | [optional] 
**volume_1day_usd** | **double** | The volume in USD in the last 1 day. | [optional] 
**volume_1mth** | **double** | The volume in the last 1 month. | [optional] 
**volume_1mth_usd** | **double** | The volume in USD in the last 1 month. | [optional] 
**price** | **double** | The price. | [optional] 
**symbol_id_exchange** | **string** | The symbol identifier in the exchange. | [optional] 
**asset_id_base_exchange** | **string** | The base asset identifier in the exchange. | [optional] 
**asset_id_quote_exchange** | **string** | The quote asset identifier in the exchange. | [optional] 
**price_precision** | **double** | The price precision. | [optional] 
**size_precision** | **double** | The size precision. | [optional] 
**raw_kvp** | **HASH[string,string]** | Not normalized raw kvp data. | [optional] 
**volume_to_usd** | **double** | Volume unit in USD. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


