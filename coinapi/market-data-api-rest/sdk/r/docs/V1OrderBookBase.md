# openapi::V1OrderBookBase

Represents the base model for order book data.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol_id** | **character** | The symbol identifier. | [optional] 
**time_exchange** | **character** | The exchange time of the order book. | [optional] 
**time_coinapi** | **character** | The CoinAPI time when the order book was received. | [optional] 
**asks** | [**AnyType**](.md) | The asks made by market makers. | [optional] 
**bids** | [**AnyType**](.md) | The bids made by market makers. | [optional] 


