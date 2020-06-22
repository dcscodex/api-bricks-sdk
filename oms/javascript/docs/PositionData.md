# OmsRestApi.PositionData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Unique position ID | [optional] 
**symbolExchange** | **String** | The contract for this position. | [optional] 
**symbolCoinapi** | **String** | The coinapi contract for this position. | [optional] 
**avgEntryPrice** | **Number** |  | [optional] 
**quantity** | **Number** | The current position amount in contracts. | [optional] 
**isBuy** | **Boolean** |  | [optional] 
**unrealisedPnL** | **Number** | Unrealised PNL is all the unrealised profit or loss coming from your portfolio&#39;s open positions. | [optional] 
**leverage** | **Number** | 1 / initMarginReq. | [optional] 
**crossMargin** | **Boolean** | True/false depending on whether you set cross margin on this position. | [optional] 
**liquidationPrice** | **Number** | Once markPrice reaches this price, this position will be liquidated. | [optional] 
**rawData** | **String** |  | [optional] 


