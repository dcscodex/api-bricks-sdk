# WWW::OpenAPIClient::Object::OptionsOptionExchangeGroup

## Load the model package
```perl
use WWW::OpenAPIClient::Object::OptionsOptionExchangeGroup;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**asset_id_base** | **string** | The base asset identifier. | [optional] 
**asset_id_quote** | **string** | The quote asset identifier. | [optional] 
**underlying_price** | **double** | The underlying price of the option. | [optional] 
**time_expiration** | **DATE_TIME** | The expiration time of the option. | [optional] 
**strikes** | [**ARRAY[OptionsStrike]**](OptionsStrike.md) | The list of strikes available. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


