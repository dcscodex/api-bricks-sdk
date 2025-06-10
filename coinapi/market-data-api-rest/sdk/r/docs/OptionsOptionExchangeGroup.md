# openapi::OptionsOptionExchangeGroup

Represents an option exchange group data model.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**asset_id_base** | **character** | The base asset identifier. | [optional] 
**asset_id_quote** | **character** | The quote asset identifier. | [optional] 
**underlying_price** | **numeric** | The underlying price of the option. | [optional] 
**time_expiration** | **character** | The expiration time of the option. | [optional] 
**strikes** | [**array[OptionsStrike]**](Options.Strike.md) | The list of strikes available. | [optional] 


