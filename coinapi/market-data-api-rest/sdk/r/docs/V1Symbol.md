# openapi::V1Symbol

Represents a symbol data model.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol_id** | **character** | The symbol identifier. | [optional] 
**exchange_id** | **character** | The exchange identifier. | [optional] 
**symbol_type** | **character** | The symbol type. | [optional] 
**asset_id_base** | **character** | The base asset identifier. | [optional] 
**asset_id_quote** | **character** | The quote asset identifier. | [optional] 
**asset_id_unit** | **character** | The unit asset identifier. | [optional] 
**future_contract_unit** | **numeric** | The contract unit for futures. | [optional] 
**future_contract_unit_asset** | **character** | The asset used as the unit for futures contract. | [optional] 
**future_delivery_time** | **character** | The future delivery time for futures contract. | [optional] 
**option_type_is_call** | **character** | Indicates whether the option type is a call. | [optional] 
**option_strike_price** | **numeric** | The strike price for options. | [optional] 
**option_contract_unit** | **numeric** | The contract unit for options. | [optional] 
**option_exercise_style** | **character** | The exercise style for options. | [optional] 
**option_expiration_time** | **character** | The expiration time for options. | [optional] 
**contract_delivery_time** | **character** | The delivery time for contracts. | [optional] 
**contract_unit** | **numeric** | The contract unit for contracts. | [optional] 
**contract_unit_asset** | **character** | The asset used as the unit for contracts. | [optional] 
**contract_id** | **character** | The contract identifier. | [optional] 
**contract_display_name** | **character** | The display name of the contract. | [optional] 
**contract_display_description** | **character** | The display description of the contract. | [optional] 
**data_start** | **character** |  | [optional] [readonly] 
**data_end** | **character** |  | [optional] [readonly] 
**data_quote_start** | **character** | The start date of quote data. | [optional] 
**data_quote_end** | **character** | The end date of quote data. | [optional] 
**data_orderbook_start** | **character** | The start date of order book data. | [optional] 
**data_orderbook_end** | **character** | The end date of order book data. | [optional] 
**data_trade_start** | **character** | The start date of trade data. | [optional] 
**data_trade_end** | **character** | The end date of trade data. | [optional] 
**index_id** | **character** | The index identifier. | [optional] 
**index_display_name** | **character** | The display name of the index. | [optional] 
**index_display_description** | **character** | The display description of the index. | [optional] 
**volume_1hrs** | **numeric** | The volume in the last 1 hour. | [optional] 
**volume_1hrs_usd** | **numeric** | The volume in USD in the last 1 hour. | [optional] 
**volume_1day** | **numeric** | The volume in the last 1 day. | [optional] 
**volume_1day_usd** | **numeric** | The volume in USD in the last 1 day. | [optional] 
**volume_1mth** | **numeric** | The volume in the last 1 month. | [optional] 
**volume_1mth_usd** | **numeric** | The volume in USD in the last 1 month. | [optional] 
**price** | **numeric** | The price. | [optional] 
**symbol_id_exchange** | **character** | The symbol identifier in the exchange. | [optional] 
**asset_id_base_exchange** | **character** | The base asset identifier in the exchange. | [optional] 
**asset_id_quote_exchange** | **character** | The quote asset identifier in the exchange. | [optional] 
**price_precision** | **numeric** | The price precision. | [optional] 
**size_precision** | **numeric** | The size precision. | [optional] 
**raw_kvp** | **map(character)** | Not normalized raw kvp data. | [optional] 
**volume_to_usd** | **numeric** | Volume unit in USD. | [optional] 


