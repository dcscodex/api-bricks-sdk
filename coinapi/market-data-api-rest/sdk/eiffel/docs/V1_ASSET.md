# V1_ASSET

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**asset_id** | [**STRING_32**](STRING_32.md) | Gets or sets the asset ID. | [optional] [default to null]
**name** | [**STRING_32**](STRING_32.md) | Gets or sets the name of the asset. | [optional] [default to null]
**type_is_crypto** | **INTEGER_32** | Gets or sets a value indicating whether the asset is a cryptocurrency. | [optional] [default to null]
**data_quote_start** | [**DATE_TIME**](DATE_TIME.md) | Gets or sets the start date of quote data. | [optional] [default to null]
**data_quote_end** | [**DATE_TIME**](DATE_TIME.md) | Gets or sets the end date of quote data. | [optional] [default to null]
**data_orderbook_start** | [**DATE_TIME**](DATE_TIME.md) | Gets or sets the start date of order book data. | [optional] [default to null]
**data_orderbook_end** | [**DATE_TIME**](DATE_TIME.md) | Gets or sets the end date of order book data. | [optional] [default to null]
**data_trade_start** | [**DATE_TIME**](DATE_TIME.md) | Gets or sets the start date of trade data. | [optional] [default to null]
**data_trade_end** | [**DATE_TIME**](DATE_TIME.md) | Gets or sets the end date of trade data. | [optional] [default to null]
**data_symbols_count** | **INTEGER_64** | Gets or sets the number of symbols. | [optional] [default to null]
**volume_1hrs_usd** | **REAL_64** | Gets or sets the USD volume in the last 1 hour. | [optional] [default to null]
**volume_1day_usd** | **REAL_64** | Gets or sets the USD volume in the last 1 day. | [optional] [default to null]
**volume_1mth_usd** | **REAL_64** | Gets or sets the USD volume in the last 1 month. | [optional] [default to null]
**price_usd** | **REAL_64** | Gets or sets the USD price of the asset. | [optional] [default to null]
**id_icon** | [**UUID**](UUID.md) | Gets or sets the ID of the icon for the asset. | [optional] [default to null]
**supply_current** | **REAL_64** | Gets or sets the current supply of the asset. | [optional] [default to null]
**supply_total** | **REAL_64** | Gets or sets the total supply of the asset. | [optional] [default to null]
**supply_max** | **REAL_64** | Gets or sets the maximum supply of the asset. | [optional] [default to null]
**chain_addresses** | [**LIST [V1_CHAIN_NETWORK_ADDRESS]**](v1.ChainNetworkAddress.md) |  | [optional] [default to null]
**data_start** | [**STRING_32**](STRING_32.md) |  | [optional] [readonly] [default to null]
**data_end** | [**STRING_32**](STRING_32.md) |  | [optional] [readonly] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


