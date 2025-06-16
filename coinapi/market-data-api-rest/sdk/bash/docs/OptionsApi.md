# OptionsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1OptionsExchangeIdCurrentGet**](OptionsApi.md#v1OptionsExchangeIdCurrentGet) | **GET** /v1/options/{exchange_id}/current | Current data by Exchange



## v1OptionsExchangeIdCurrentGet

Current data by Exchange

Get current options data for a specific exchange.

Returns option data grouped by underlying asset, quote currency, and expiration time,
with quotes for both calls and puts at each strike price.

### Example

```bash
 v1OptionsExchangeIdCurrentGet exchange_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **string** | Exchange identifier (from the Metadata -> Exchanges) | [default to null]

### Return type

[**array[OptionsOptionExchangeGroup]**](OptionsOptionExchangeGroup.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

