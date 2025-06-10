# WWW::OpenAPIClient::ExchangeRatesApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::ExchangeRatesApi;
```

All URIs are relative to *https://api-realtime.fx.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_specific_rate**](ExchangeRatesApi.md#get_specific_rate) | **GET** /v1/exchangerate/{asset_id_base}/{asset_id_quote} | Get specific rate
[**v1_exchangerate_asset_id_base_get**](ExchangeRatesApi.md#v1_exchangerate_asset_id_base_get) | **GET** /v1/exchangerate/{asset_id_base} | Get all current rates


# **get_specific_rate**
> V1ExchangeRate get_specific_rate(asset_id_base => $asset_id_base, asset_id_quote => $asset_id_quote)

Get specific rate

Retrieves the exchange rate for a specific base and quote asset at a given time or the current rate.              :::info If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements. :::

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ExchangeRatesApi;
my $api_instance = WWW::OpenAPIClient::ExchangeRatesApi->new(

    # Configure API key authorization: APIKey
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
    # Configure API key authorization: JWT
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $asset_id_base = "asset_id_base_example"; # string | Requested exchange rate base asset identifier (from the Metadata -> Assets)
my $asset_id_quote = "asset_id_quote_example"; # string | Requested exchange rate quote asset identifier (from the Metadata -> Assets)

eval {
    my $result = $api_instance->get_specific_rate(asset_id_base => $asset_id_base, asset_id_quote => $asset_id_quote);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ExchangeRatesApi->get_specific_rate: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asset_id_base** | **string**| Requested exchange rate base asset identifier (from the Metadata -&gt; Assets) | 
 **asset_id_quote** | **string**| Requested exchange rate quote asset identifier (from the Metadata -&gt; Assets) | 

### Return type

[**V1ExchangeRate**](V1ExchangeRate.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_exchangerate_asset_id_base_get**
> V1ExchangeRates v1_exchangerate_asset_id_base_get(asset_id_base => $asset_id_base, filter_asset_id => $filter_asset_id, invert => $invert)

Get all current rates

Get the current exchange rate between requested asset and all other assets.              :::info If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements. :::              :::info You can invert the rates by using Y = 1 / X equation, for example BTC/USD = 1 / (USD/BTC); :::

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ExchangeRatesApi;
my $api_instance = WWW::OpenAPIClient::ExchangeRatesApi->new(

    # Configure API key authorization: APIKey
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
    # Configure API key authorization: JWT
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $asset_id_base = "asset_id_base_example"; # string | Requested exchange rates base asset identifier (from the Metadata -> Assets)
my $filter_asset_id = "filter_asset_id_example"; # string | Comma or semicolon delimited asset identifiers used to filter response (optional)
my $invert = false; # boolean | True will invert all the rates (optional, if true then rates will be calculated as `rate = 1 / actual_rate` eg. `USD/BTC` as `BTC/USD`)

eval {
    my $result = $api_instance->v1_exchangerate_asset_id_base_get(asset_id_base => $asset_id_base, filter_asset_id => $filter_asset_id, invert => $invert);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ExchangeRatesApi->v1_exchangerate_asset_id_base_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asset_id_base** | **string**| Requested exchange rates base asset identifier (from the Metadata -&gt; Assets) | 
 **filter_asset_id** | **string**| Comma or semicolon delimited asset identifiers used to filter response (optional) | [optional] 
 **invert** | **boolean**| True will invert all the rates (optional, if true then rates will be calculated as &#x60;rate &#x3D; 1 / actual_rate&#x60; eg. &#x60;USD/BTC&#x60; as &#x60;BTC/USD&#x60;) | [optional] [default to false]

### Return type

[**V1ExchangeRates**](V1ExchangeRates.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

