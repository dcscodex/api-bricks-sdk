# POSITION_DATA

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**STRING_32**](STRING_32.md) | Unique position ID | [optional] [default to null]
**symbol_exchange** | [**STRING_32**](STRING_32.md) | The contract for this position. | [optional] [default to null]
**symbol_coinapi** | [**STRING_32**](STRING_32.md) | The coinapi contract for this position. | [optional] [default to null]
**avg_entry_price** | **REAL_32** |  | [optional] [default to null]
**quantity** | **REAL_32** | The current position amount in contracts. | [optional] [default to null]
**is_buy** | **BOOLEAN** |  | [optional] [default to null]
**unrealised_pn_l** | **REAL_32** | Unrealised PNL is all the unrealised profit or loss coming from your portfolio&#39;s open positions. | [optional] [default to null]
**leverage** | **REAL_32** | 1 / initMarginReq. | [optional] [default to null]
**cross_margin** | **BOOLEAN** | True/false depending on whether you set cross margin on this position. | [optional] [default to null]
**liquidation_price** | **REAL_32** | Once markPrice reaches this price, this position will be liquidated. | [optional] [default to null]
**raw_data** | [**STRING_32**](STRING_32.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


