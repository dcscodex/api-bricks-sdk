# openapi::V1Asset

Represents an asset.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**asset_id** | **character** | Gets or sets the asset ID. | [optional] 
**name** | **character** | Gets or sets the name of the asset. | [optional] 
**type_is_crypto** | **integer** | Gets or sets a value indicating whether the asset is a cryptocurrency. | [optional] 
**data_quote_start** | **character** | Gets or sets the start date of quote data. | [optional] 
**data_quote_end** | **character** | Gets or sets the end date of quote data. | [optional] 
**data_orderbook_start** | **character** | Gets or sets the start date of order book data. | [optional] 
**data_orderbook_end** | **character** | Gets or sets the end date of order book data. | [optional] 
**data_trade_start** | **character** | Gets or sets the start date of trade data. | [optional] 
**data_trade_end** | **character** | Gets or sets the end date of trade data. | [optional] 
**data_symbols_count** | **integer** | Gets or sets the number of symbols. | [optional] 
**volume_1hrs_usd** | **numeric** | Gets or sets the USD volume in the last 1 hour. | [optional] 
**volume_1day_usd** | **numeric** | Gets or sets the USD volume in the last 1 day. | [optional] 
**volume_1mth_usd** | **numeric** | Gets or sets the USD volume in the last 1 month. | [optional] 
**price_usd** | **numeric** | Gets or sets the USD price of the asset. | [optional] 
**id_icon** | **character** | Gets or sets the ID of the icon for the asset. | [optional] 
**supply_current** | **numeric** | Gets or sets the current supply of the asset. | [optional] 
**supply_total** | **numeric** | Gets or sets the total supply of the asset. | [optional] 
**supply_max** | **numeric** | Gets or sets the maximum supply of the asset. | [optional] 
**chain_addresses** | [**array[V1ChainNetworkAddress]**](v1.ChainNetworkAddress.md) |  | [optional] 
**data_start** | **character** |  | [optional] [readonly] 
**data_end** | **character** |  | [optional] [readonly] 


