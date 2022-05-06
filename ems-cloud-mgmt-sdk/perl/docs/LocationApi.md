# WWW::OpenAPIClient::LocationApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::LocationApi;
```

All URIs are relative to *https://ems-mgmt-sandbox.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**locations**](LocationApi.md#locations) | **GET** /v1/locations | Get site locations


# **locations**
> ARRAY[Locations] locations()

Get site locations

This endpoint providing information about the server site locations supported in the EMS API.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::LocationApi;
my $api_instance = WWW::OpenAPIClient::LocationApi->new(

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
    my $result = $api_instance->locations();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LocationApi->locations: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[Locations]**](Locations.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

