
# BalanceData

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **kotlin.String** | symbol_exchange |  [optional]
**symbolExchange** | **kotlin.String** | Currency code. |  [optional]
**symbolCoinapi** | **kotlin.String** | CoinAPI currency code. |  [optional]
**balance** | **kotlin.Float** | The current balance. |  [optional]
**available** | **kotlin.Float** | The amount that is available to trade. |  [optional]
**locked** | **kotlin.Float** | Blocked funds. |  [optional]
**updateOrigin** | [**inline**](#UpdateOriginEnum) | Source of last modification.  |  [optional]


<a name="UpdateOriginEnum"></a>
## Enum: update_origin
Name | Value
---- | -----
updateOrigin | INITIALIZATION, BALANCE_MANAGER, EXCHANGE



