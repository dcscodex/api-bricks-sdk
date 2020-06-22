# WWW::OpenAPIClient::PositionsApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::PositionsApi;
```

All URIs are relative to *http://localhost:3001*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_positions_get**](PositionsApi.md#v1_positions_get) | **GET** /v1/positions | Get positions


# **v1_positions_get**
> ARRAY[Position] v1_positions_get(exchange_id => $exchange_id)

Get positions

Returns all of your positions.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::PositionsApi;
my $api_instance = WWW::OpenAPIClient::PositionsApi->new(
);

my $exchange_id = KRAKEN; # string | Exchange name

eval { 
    my $result = $api_instance->v1_positions_get(exchange_id => $exchange_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PositionsApi->v1_positions_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **string**| Exchange name | [optional] 

### Return type

[**ARRAY[Position]**](Position.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

