# WWW::OpenAPIClient::OrderBookApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::OrderBookApi;
```

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_orderbooks_symbol_id_current_get**](OrderBookApi.md#v1_orderbooks_symbol_id_current_get) | **GET** /v1/orderbooks/{symbol_id}/current | Get current order book
[**v1_orderbooks_symbol_id_depth_current_get**](OrderBookApi.md#v1_orderbooks_symbol_id_depth_current_get) | **GET** /v1/orderbooks/{symbol_id}/depth/current | Current depth of the order book
[**v1_orderbooks_symbol_id_history_get**](OrderBookApi.md#v1_orderbooks_symbol_id_history_get) | **GET** /v1/orderbooks/{symbol_id}/history | Historical data
[**v1_orderbooks_symbol_id_latest_get**](OrderBookApi.md#v1_orderbooks_symbol_id_latest_get) | **GET** /v1/orderbooks/{symbol_id}/latest | Latest data


# **v1_orderbooks_symbol_id_current_get**
> V1OrderBookBase v1_orderbooks_symbol_id_current_get(symbol_id => $symbol_id, limit_levels => $limit_levels)

Get current order book

Retrieves the current order book for the specified symbol.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::OrderBookApi;
my $api_instance = WWW::OpenAPIClient::OrderBookApi->new(

    # Configure API key authorization: APIKey
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
    # Configure bearer access token for authorization: JWT
    access_token => 'YOUR_BEARER_TOKEN',
    
);

my $symbol_id = "symbol_id_example"; # string | The symbol ID (from the Metadata -> Symbols)
my $limit_levels = 56; # int | The maximum number of levels to include in the response.

eval {
    my $result = $api_instance->v1_orderbooks_symbol_id_current_get(symbol_id => $symbol_id, limit_levels => $limit_levels);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling OrderBookApi->v1_orderbooks_symbol_id_current_get: $@\n";
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

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_orderbooks_symbol_id_depth_current_get**
> V1OrderBookDepth v1_orderbooks_symbol_id_depth_current_get(symbol_id => $symbol_id, limit_levels => $limit_levels)

Current depth of the order book

Retrieves the current depth of the order book for the specified symbol.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::OrderBookApi;
my $api_instance = WWW::OpenAPIClient::OrderBookApi->new(

    # Configure API key authorization: APIKey
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
    # Configure bearer access token for authorization: JWT
    access_token => 'YOUR_BEARER_TOKEN',
    
);

my $symbol_id = "symbol_id_example"; # string | The symbol ID (from the Metadata -> Symbols)
my $limit_levels = 56; # int | The maximum number of levels to include in the response.

eval {
    my $result = $api_instance->v1_orderbooks_symbol_id_depth_current_get(symbol_id => $symbol_id, limit_levels => $limit_levels);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling OrderBookApi->v1_orderbooks_symbol_id_depth_current_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol_id** | **string**| The symbol ID (from the Metadata -&gt; Symbols) | 
 **limit_levels** | **int**| The maximum number of levels to include in the response. | [optional] 

### Return type

[**V1OrderBookDepth**](V1OrderBookDepth.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_orderbooks_symbol_id_history_get**
> ARRAY[V1OrderBook] v1_orderbooks_symbol_id_history_get(symbol_id => $symbol_id, date => $date, time_start => $time_start, time_end => $time_end, limit => $limit, limit_levels => $limit_levels)

Historical data

Get historical order book snapshots for a specific symbol within time range, returned in time ascending order.              :::info The historical order book data via the REST API is currently limited by a number of updates and to the maximum number of 20 levels. :::  :::warning The 'time_start' and 'time_end' parameters must be from the same day as this endpoint provides intraday data only for specific day. Please use the 'date' parameter instead for querying data for a specific day without filter. :::

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::OrderBookApi;
my $api_instance = WWW::OpenAPIClient::OrderBookApi->new(

    # Configure API key authorization: APIKey
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
    # Configure bearer access token for authorization: JWT
    access_token => 'YOUR_BEARER_TOKEN',
    
);

my $symbol_id = "symbol_id_example"; # string | Symbol identifier for requested timeseries (from the Metadata -> Symbols)
my $date = "date_example"; # string | Date in ISO 8601, returned data is for the whole given day (preferred method, required if 'time_start' is not provided)
my $time_start = "time_start_example"; # string | Starting time in ISO 8601 (deprecated, use 'date' instead)
my $time_end = "time_end_example"; # string | Timeseries ending time in ISO 8601 (deprecated, use 'date' instead)
my $limit = 100; # int | Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
my $limit_levels = 56; # int | Maximum amount of levels from each side of the book to include in response (optional)

eval {
    my $result = $api_instance->v1_orderbooks_symbol_id_history_get(symbol_id => $symbol_id, date => $date, time_start => $time_start, time_end => $time_end, limit => $limit, limit_levels => $limit_levels);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling OrderBookApi->v1_orderbooks_symbol_id_history_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol_id** | **string**| Symbol identifier for requested timeseries (from the Metadata -&gt; Symbols) | 
 **date** | **string**| Date in ISO 8601, returned data is for the whole given day (preferred method, required if &#39;time_start&#39; is not provided) | [optional] 
 **time_start** | **string**| Starting time in ISO 8601 (deprecated, use &#39;date&#39; instead) | [optional] 
 **time_end** | **string**| Timeseries ending time in ISO 8601 (deprecated, use &#39;date&#39; instead) | [optional] 
 **limit** | **int**| Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]
 **limit_levels** | **int**| Maximum amount of levels from each side of the book to include in response (optional) | [optional] 

### Return type

[**ARRAY[V1OrderBook]**](V1OrderBook.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_orderbooks_symbol_id_latest_get**
> ARRAY[V1OrderBook] v1_orderbooks_symbol_id_latest_get(symbol_id => $symbol_id, limit => $limit, limit_levels => $limit_levels)

Latest data

Get latest order book snapshots for a specific symbol, returned in time descending order.              :::info The historical order book data via the REST API is currently limited by a number of updates and to the maximum number of 20 levels. :::

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::OrderBookApi;
my $api_instance = WWW::OpenAPIClient::OrderBookApi->new(

    # Configure API key authorization: APIKey
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
    # Configure bearer access token for authorization: JWT
    access_token => 'YOUR_BEARER_TOKEN',
    
);

my $symbol_id = "symbol_id_example"; # string | Symbol identifier of requested timeseries (from the Metadata -> Symbols)
my $limit = 100; # int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
my $limit_levels = 56; # int | Maximum amount of levels from each side of the book to include in response (optional)

eval {
    my $result = $api_instance->v1_orderbooks_symbol_id_latest_get(symbol_id => $symbol_id, limit => $limit, limit_levels => $limit_levels);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling OrderBookApi->v1_orderbooks_symbol_id_latest_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol_id** | **string**| Symbol identifier of requested timeseries (from the Metadata -&gt; Symbols) | 
 **limit** | **int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]
 **limit_levels** | **int**| Maximum amount of levels from each side of the book to include in response (optional) | [optional] 

### Return type

[**ARRAY[V1OrderBook]**](V1OrderBook.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

