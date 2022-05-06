# WWW::OpenAPIClient::EndpointsApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::EndpointsApi;
```

All URIs are relative to *https://ems-mgmt-sandbox.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**endpoints**](EndpointsApi.md#endpoints) | **GET** /v1/endpoints | Get API endpoints


# **endpoints**
> ARRAY[AccountEndpoint] endpoints(filter_exchange_id => $filter_exchange_id)

Get API endpoints

Get all API endpoints that the EMS API expose for your subscription.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::EndpointsApi;
my $api_instance = WWW::OpenAPIClient::EndpointsApi->new(

    # Configure API key authorization: APIKeyHeader
    api_key => {'X-CoinAPI-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'X-CoinAPI-Key' => 'Bearer'},
    # Configure API key authorization: APIKeyQueryParam
    api_key => {'apikey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apikey' => 'Bearer'},
);

my $filter_exchange_id = [("null")]; # ARRAY[string] | Exchange id

eval {
    my $result = $api_instance->endpoints(filter_exchange_id => $filter_exchange_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EndpointsApi->endpoints: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_exchange_id** | [**ARRAY[string]**](string.md)| Exchange id | [optional] 

### Return type

[**ARRAY[AccountEndpoint]**](AccountEndpoint.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

