# openapi::V1Quote

Represents a quote data model.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol_id** | **character** | The symbol identifier. | [optional] 
**time_exchange** | **character** | The exchange time of the quote. | [optional] 
**time_coinapi** | **character** | The CoinAPI time when the quote was received. | [optional] 
**ask_price** | **numeric** | The best asking price. | [optional] 
**ask_size** | **numeric** | The volume resting on the best ask. If the value is equal to zero, then the size is unknown. | [optional] 
**bid_price** | **numeric** | The best bidding price. | [optional] 
**bid_size** | **numeric** | The volume resting on the best bid. If the value is equal to zero, then the size is unknown. | [optional] 


