# BALANCE_DATA

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**asset_id_exchange** | [**STRING_32**](STRING_32.md) | Exchange currency code. | [optional] [default to null]
**asset_id_coinapi** | [**STRING_32**](STRING_32.md) | CoinAPI currency code. | [optional] [default to null]
**balance** | **REAL_32** | Value of the current total currency balance on the exchange. | [optional] [default to null]
**available** | **REAL_32** | Value of the current available currency balance on the exchange that can be used as collateral. | [optional] [default to null]
**locked** | **REAL_32** | Value of the current locked currency balance by the exchange. | [optional] [default to null]
**last_updated_by** | [**STRING_32**](STRING_32.md) | Source of the last modification.  | [optional] [default to null]
**rate_usd** | **REAL_32** | Current exchange rate to the USD for the single unit of the currency.  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


