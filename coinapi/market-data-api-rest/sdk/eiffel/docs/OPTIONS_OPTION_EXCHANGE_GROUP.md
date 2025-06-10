# OPTIONS_OPTION_EXCHANGE_GROUP

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**asset_id_base** | [**STRING_32**](STRING_32.md) | The base asset identifier. | [optional] [default to null]
**asset_id_quote** | [**STRING_32**](STRING_32.md) | The quote asset identifier. | [optional] [default to null]
**underlying_price** | **REAL_64** | The underlying price of the option. | [optional] [default to null]
**time_expiration** | [**DATE_TIME**](DATE_TIME.md) | The expiration time of the option. | [optional] [default to null]
**strikes** | [**LIST [OPTIONS_STRIKE]**](Options.Strike.md) | The list of strikes available. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


