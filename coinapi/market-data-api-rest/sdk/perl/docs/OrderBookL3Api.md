# WWW::OpenAPIClient::OrderBookL3Api

## Load the API package
```perl
use WWW::OpenAPIClient::Object::OrderBookL3Api;
```

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_orderbooks3_current_get**](OrderBookL3Api.md#v1_orderbooks3_current_get) | **GET** /v1/orderbooks3/current | Current order books
[**v1_orderbooks3_symbol_id_current_get**](OrderBookL3Api.md#v1_orderbooks3_symbol_id_current_get) | **GET** /v1/orderbooks3/{symbol_id}/current | Current order book by symbol_id


# **v1_orderbooks3_current_get**
> ARRAY[V1OrderBookBase] v1_orderbooks3_current_get(filter_symbol_id => $filter_symbol_id, limit_levels => $limit_levels)

Current order books

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::OrderBookL3Api;
my $api_instance = WWW::OpenAPIClient::OrderBookL3Api->new(

    # Configure API key authorization: ApiKey
    api_key => {'X-CoinAPI-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'X-CoinAPI-Key' => 'Bearer'},
);

my $filter_symbol_id = "filter_symbol_id_example"; # string | Comma or semicolon delimited parts of symbol identifier used to filter the response.
my $limit_levels = 56; # int | The maximum number of levels to include in the response.

eval {
    my $result = $api_instance->v1_orderbooks3_current_get(filter_symbol_id => $filter_symbol_id, limit_levels => $limit_levels);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling OrderBookL3Api->v1_orderbooks3_current_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_symbol_id** | **string**| Comma or semicolon delimited parts of symbol identifier used to filter the response. | [optional] 
 **limit_levels** | **int**| The maximum number of levels to include in the response. | [optional] 

### Return type

[**ARRAY[V1OrderBookBase]**](V1OrderBookBase.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_orderbooks3_symbol_id_current_get**
> V1OrderBookBase v1_orderbooks3_symbol_id_current_get(symbol_id => $symbol_id, limit_levels => $limit_levels)

Current order book by symbol_id

Retrieves the current order book for the specified symbol.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::OrderBookL3Api;
my $api_instance = WWW::OpenAPIClient::OrderBookL3Api->new(

    # Configure API key authorization: ApiKey
    api_key => {'X-CoinAPI-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'X-CoinAPI-Key' => 'Bearer'},
);

my $symbol_id = "symbol_id_example"; # string | The symbol ID (from the Metadata -> Symbols)
my $limit_levels = 56; # int | The maximum number of levels to include in the response.

eval {
    my $result = $api_instance->v1_orderbooks3_symbol_id_current_get(symbol_id => $symbol_id, limit_levels => $limit_levels);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling OrderBookL3Api->v1_orderbooks3_symbol_id_current_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol_id** | **string**| The symbol ID (from the Metadata -&gt; Symbols) | 
 **limit_levels** | **int**| The maximum number of levels to include in the response. | [optional] 

### Return type

[**V1OrderBookBase**](V1OrderBookBase.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

