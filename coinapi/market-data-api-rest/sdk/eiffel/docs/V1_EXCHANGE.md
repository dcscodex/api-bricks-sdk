# V1_EXCHANGE

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**exchange_id** | [**STRING_32**](STRING_32.md) | Gets or sets the exchange ID. | [optional] [default to null]
**website** | [**STRING_32**](STRING_32.md) | Gets or sets the website URL of the exchange. | [optional] [default to null]
**name** | [**STRING_32**](STRING_32.md) | Gets or sets the name of the exchange. | [optional] [default to null]
**data_start** | [**STRING_32**](STRING_32.md) |  | [optional] [readonly] [default to null]
**data_end** | [**STRING_32**](STRING_32.md) |  | [optional] [readonly] [default to null]
**data_quote_start** | [**DATE_TIME**](DATE_TIME.md) | Gets or sets the start date of quote data. | [optional] [default to null]
**data_quote_end** | [**DATE_TIME**](DATE_TIME.md) | Gets or sets the end date of quote data. | [optional] [default to null]
**data_orderbook_start** | [**DATE_TIME**](DATE_TIME.md) | Gets or sets the start date of order book data. | [optional] [default to null]
**data_orderbook_end** | [**DATE_TIME**](DATE_TIME.md) | Gets or sets the end date of order book data. | [optional] [default to null]
**data_trade_start** | [**DATE_TIME**](DATE_TIME.md) | Gets or sets the start date of trade data. | [optional] [default to null]
**data_trade_end** | [**DATE_TIME**](DATE_TIME.md) | Gets or sets the end date of trade data. | [optional] [default to null]
**data_trade_count** | **INTEGER_64** | Gets or sets the number of trades. | [optional] [default to null]
**data_symbols_count** | **INTEGER_64** | Gets or sets the number of symbols. | [optional] [default to null]
**volume_1hrs_usd** | **REAL_64** | Gets or sets the USD volume in the last 1 hour. | [optional] [default to null]
**volume_1day_usd** | **REAL_64** | Gets or sets the USD volume in the last 1 day. | [optional] [default to null]
**volume_1mth_usd** | **REAL_64** | Gets or sets the USD volume in the last 1 month. | [optional] [default to null]
**metric_id** | [**LIST [STRING_32]**](STRING_32.md) | Gets or sets the list of metric IDs. | [optional] [default to null]
**icons** | [**LIST [V1_ICON]**](v1.Icon.md) | Gets or sets the list of icons for the exchange. | [optional] [readonly] [default to null]
**rank** | **REAL_64** | Rank of the exchange. | [optional] [default to null]
**integration_status** | [**STRING_32**](STRING_32.md) | Status of the integration | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


