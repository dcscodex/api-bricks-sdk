# OmsRestApi.BalanceData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | symbol_exchange | [optional] 
**symbolExchange** | **String** | Currency code. | [optional] 
**symbolCoinapi** | **String** | CoinAPI currency code. | [optional] 
**balance** | **Number** | The current balance. | [optional] 
**available** | **Number** | The amount that is available to trade. | [optional] 
**locked** | **Number** | Blocked funds. | [optional] 
**updateOrigin** | **String** | Source of last modification.  | [optional] 



## Enum: UpdateOriginEnum


* `INITIALIZATION` (value: `"INITIALIZATION"`)

* `BALANCE_MANAGER` (value: `"BALANCE_MANAGER"`)

* `EXCHANGE` (value: `"EXCHANGE"`)




