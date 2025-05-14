# WWW::OpenAPIClient::Object::V1Asset

## Load the model package
```perl
use WWW::OpenAPIClient::Object::V1Asset;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**asset_id** | **string** | Gets or sets the asset ID. | [optional] 
**name** | **string** | Gets or sets the name of the asset. | [optional] 
**type_is_crypto** | **int** | Gets or sets a value indicating whether the asset is a cryptocurrency. | [optional] 
**data_quote_start** | **DATE_TIME** | Gets or sets the start date of quote data. | [optional] 
**data_quote_end** | **DATE_TIME** | Gets or sets the end date of quote data. | [optional] 
**data_orderbook_start** | **DATE_TIME** | Gets or sets the start date of order book data. | [optional] 
**data_orderbook_end** | **DATE_TIME** | Gets or sets the end date of order book data. | [optional] 
**data_trade_start** | **DATE_TIME** | Gets or sets the start date of trade data. | [optional] 
**data_trade_end** | **DATE_TIME** | Gets or sets the end date of trade data. | [optional] 
**data_symbols_count** | **int** | Gets or sets the number of symbols. | [optional] 
**volume_1hrs_usd** | **double** | Gets or sets the USD volume in the last 1 hour. | [optional] 
**volume_1day_usd** | **double** | Gets or sets the USD volume in the last 1 day. | [optional] 
**volume_1mth_usd** | **double** | Gets or sets the USD volume in the last 1 month. | [optional] 
**price_usd** | **double** | Gets or sets the USD price of the asset. | [optional] 
**id_icon** | **string** | Gets or sets the ID of the icon for the asset. | [optional] 
**supply_current** | **double** | Gets or sets the current supply of the asset. | [optional] 
**supply_total** | **double** | Gets or sets the total supply of the asset. | [optional] 
**supply_max** | **double** | Gets or sets the maximum supply of the asset. | [optional] 
**chain_addresses** | [**ARRAY[V1ChainNetworkAddress]**](V1ChainNetworkAddress.md) |  | [optional] 
**data_start** | **string** |  | [optional] [readonly] 
**data_end** | **string** |  | [optional] [readonly] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


