# WWW::OpenAPIClient::ExchangeApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::ExchangeApi;
```

All URIs are relative to *https://ems-mgmt-sandbox.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**exchange_login_require**](ExchangeApi.md#exchange_login_require) | **GET** /v1/exchanges | Get exchange configuration


# **exchange_login_require**
> ARRAY[ExchangeLoginRequire] exchange_login_require()

Get exchange configuration

Get information about the required parameters or server site location of the exchanges supported in the EMS API.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ExchangeApi;
my $api_instance = WWW::OpenAPIClient::ExchangeApi->new(

    # Configure API key authorization: APIKeyHeader
    api_key => {'X-CoinAPI-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'X-CoinAPI-Key' => 'Bearer'},
    # Configure API key authorization: APIKeyQueryParam
    api_key => {'apikey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apikey' => 'Bearer'},
);


eval {
    my $result = $api_instance->exchange_login_require();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ExchangeApi->exchange_login_require: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[ExchangeLoginRequire]**](ExchangeLoginRequire.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

