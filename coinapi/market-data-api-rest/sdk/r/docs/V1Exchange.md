# openapi::V1Exchange

Represents an exchange.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**exchange_id** | **character** | Gets or sets the exchange ID. | [optional] 
**website** | **character** | Gets or sets the website URL of the exchange. | [optional] 
**name** | **character** | Gets or sets the name of the exchange. | [optional] 
**data_start** | **character** |  | [optional] [readonly] 
**data_end** | **character** |  | [optional] [readonly] 
**data_quote_start** | **character** | Gets or sets the start date of quote data. | [optional] 
**data_quote_end** | **character** | Gets or sets the end date of quote data. | [optional] 
**data_orderbook_start** | **character** | Gets or sets the start date of order book data. | [optional] 
**data_orderbook_end** | **character** | Gets or sets the end date of order book data. | [optional] 
**data_trade_start** | **character** | Gets or sets the start date of trade data. | [optional] 
**data_trade_end** | **character** | Gets or sets the end date of trade data. | [optional] 
**data_trade_count** | **integer** | Gets or sets the number of trades. | [optional] 
**data_symbols_count** | **integer** | Gets or sets the number of symbols. | [optional] 
**volume_1hrs_usd** | **numeric** | Gets or sets the USD volume in the last 1 hour. | [optional] 
**volume_1day_usd** | **numeric** | Gets or sets the USD volume in the last 1 day. | [optional] 
**volume_1mth_usd** | **numeric** | Gets or sets the USD volume in the last 1 month. | [optional] 
**metric_id** | **array[character]** | Gets or sets the list of metric IDs. | [optional] 
**icons** | [**array[V1Icon]**](v1.Icon.md) | Gets or sets the list of icons for the exchange. | [optional] [readonly] 
**rank** | **numeric** | Rank of the exchange. | [optional] 
**integration_status** | **character** | Status of the integration | [optional] 


