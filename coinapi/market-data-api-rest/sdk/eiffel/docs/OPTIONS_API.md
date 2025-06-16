# OPTIONS_API

All URIs are relative to *https://rest.coinapi.io*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**v1_options_exchange_id_current_get**](OPTIONS_API.md#v1_options_exchange_id_current_get) | **Get** /v1/options/{exchange_id}/current | Current data by Exchange


# **v1_options_exchange_id_current_get**
> v1_options_exchange_id_current_get (exchange_id: STRING_32 ): detachable LIST [OPTIONS_OPTION_EXCHANGE_GROUP]


Current data by Exchange

Get current options data for a specific exchange.  Returns option data grouped by underlying asset, quote currency, and expiration time, with quotes for both calls and puts at each strike price.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **STRING_32**| Exchange identifier (from the Metadata -&gt; Exchanges) | [default to null]

### Return type

[**LIST [OPTIONS_OPTION_EXCHANGE_GROUP]**](Options.OptionExchangeGroup.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

