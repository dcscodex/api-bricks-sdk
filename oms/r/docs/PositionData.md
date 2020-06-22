# openapi::PositionData

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **character** | Unique position ID | [optional] 
**symbol_exchange** | **character** | The contract for this position. | [optional] 
**symbol_coinapi** | **character** | The coinapi contract for this position. | [optional] 
**avg_entry_price** | **numeric** |  | [optional] 
**quantity** | **numeric** | The current position amount in contracts. | [optional] 
**is_buy** | **character** |  | [optional] 
**unrealised_pn_l** | **numeric** | Unrealised PNL is all the unrealised profit or loss coming from your portfolio&#39;s open positions. | [optional] 
**leverage** | **numeric** | 1 / initMarginReq. | [optional] 
**cross_margin** | **character** | True/false depending on whether you set cross margin on this position. | [optional] 
**liquidation_price** | **numeric** | Once markPrice reaches this price, this position will be liquidated. | [optional] 
**raw_data** | **character** |  | [optional] 


