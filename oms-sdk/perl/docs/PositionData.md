# WWW::OpenAPIClient::Object::PositionData

## Load the model package
```perl
use WWW::OpenAPIClient::Object::PositionData;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | Unique position ID | [optional] 
**symbol_exchange** | **string** | The contract for this position. | [optional] 
**symbol_coinapi** | **string** | The coinapi contract for this position. | [optional] 
**avg_entry_price** | **double** |  | [optional] 
**quantity** | **double** | The current position amount in contracts. | [optional] 
**is_buy** | **boolean** |  | [optional] 
**unrealised_pn_l** | **double** | Unrealised PNL is all the unrealised profit or loss coming from your portfolio&#39;s open positions. | [optional] 
**leverage** | **double** | 1 / initMarginReq. | [optional] 
**cross_margin** | **boolean** | True/false depending on whether you set cross margin on this position. | [optional] 
**liquidation_price** | **double** | Once markPrice reaches this price, this position will be liquidated. | [optional] 
**raw_data** | **string** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


