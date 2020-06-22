

# BalanceData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | symbol_exchange |  [optional]
**symbolExchange** | **String** | Currency code. |  [optional]
**symbolCoinapi** | **String** | CoinAPI currency code. |  [optional]
**balance** | **Float** | The current balance. |  [optional]
**available** | **Float** | The amount that is available to trade. |  [optional]
**locked** | **Float** | Blocked funds. |  [optional]
**updateOrigin** | [**UpdateOriginEnum**](#UpdateOriginEnum) | Source of last modification.  |  [optional]



## Enum: UpdateOriginEnum

Name | Value
---- | -----
INITIALIZATION | &quot;INITIALIZATION&quot;
BALANCE_MANAGER | &quot;BALANCE_MANAGER&quot;
EXCHANGE | &quot;EXCHANGE&quot;



