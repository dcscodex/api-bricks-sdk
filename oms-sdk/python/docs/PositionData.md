# PositionData

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | Unique position ID | [optional] 
**symbol_exchange** | **str** | The contract for this position. | [optional] 
**symbol_coinapi** | **str** | The coinapi contract for this position. | [optional] 
**avg_entry_price** | **float** |  | [optional] 
**quantity** | **float** | The current position amount in contracts. | [optional] 
**is_buy** | **bool** |  | [optional] 
**unrealised_pn_l** | **float** | Unrealised PNL is all the unrealised profit or loss coming from your portfolio&#39;s open positions. | [optional] 
**leverage** | **float** | 1 / initMarginReq. | [optional] 
**cross_margin** | **bool** | True/false depending on whether you set cross margin on this position. | [optional] 
**liquidation_price** | **float** | Once markPrice reaches this price, this position will be liquidated. | [optional] 
**raw_data** | **str** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


