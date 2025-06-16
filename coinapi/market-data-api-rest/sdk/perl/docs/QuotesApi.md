# WWW::OpenAPIClient::QuotesApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::QuotesApi;
```

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_quotes_current_get**](QuotesApi.md#v1_quotes_current_get) | **GET** /v1/quotes/current | Current data
[**v1_quotes_latest_get**](QuotesApi.md#v1_quotes_latest_get) | **GET** /v1/quotes/latest | Latest data
[**v1_quotes_symbol_id_current_get**](QuotesApi.md#v1_quotes_symbol_id_current_get) | **GET** /v1/quotes/{symbol_id}/current | Current quotes for a specific symbol
[**v1_quotes_symbol_id_history_get**](QuotesApi.md#v1_quotes_symbol_id_history_get) | **GET** /v1/quotes/{symbol_id}/history | Historical data
[**v1_quotes_symbol_id_latest_get**](QuotesApi.md#v1_quotes_symbol_id_latest_get) | **GET** /v1/quotes/{symbol_id}/latest | Latest quote updates for a specific symbol


# **v1_quotes_current_get**
> ARRAY[V1QuoteTrade] v1_quotes_current_get(filter_symbol_id => $filter_symbol_id)

Current data

Get current quotes for all symbols or for a specific symbol.              :::info When requesting current data for a specific symbol, output is not encapsulated into JSON array as only one item is returned. :::

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::QuotesApi;
my $api_instance = WWW::OpenAPIClient::QuotesApi->new(

    # Configure API key authorization: APIKey
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
    # Configure bearer access token for authorization: JWT
    access_token => 'YOUR_BEARER_TOKEN',
    
);

my $filter_symbol_id = "filter_symbol_id_example"; # string | Comma or semicolon delimited parts of symbol identifier used to filter response. (optional)

eval {
    my $result = $api_instance->v1_quotes_current_get(filter_symbol_id => $filter_symbol_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling QuotesApi->v1_quotes_current_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_symbol_id** | **string**| Comma or semicolon delimited parts of symbol identifier used to filter response. (optional) | [optional] 

### Return type

[**ARRAY[V1QuoteTrade]**](V1QuoteTrade.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_quotes_latest_get**
> ARRAY[V1Quote] v1_quotes_latest_get(filter_symbol_id => $filter_symbol_id, limit => $limit)

Latest data

Get latest updates of the quotes up to 1 minute ago. Latest data is always returned in time descending order.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::QuotesApi;
my $api_instance = WWW::OpenAPIClient::QuotesApi->new(

    # Configure API key authorization: APIKey
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
    # Configure bearer access token for authorization: JWT
    access_token => 'YOUR_BEARER_TOKEN',
    
);

my $filter_symbol_id = "filter_symbol_id_example"; # string | Comma or semicolon delimited parts of symbol identifier used to filter response. (optional)
my $limit = 100; # int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)

eval {
    my $result = $api_instance->v1_quotes_latest_get(filter_symbol_id => $filter_symbol_id, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling QuotesApi->v1_quotes_latest_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_symbol_id** | **string**| Comma or semicolon delimited parts of symbol identifier used to filter response. (optional) | [optional] 
 **limit** | **int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**ARRAY[V1Quote]**](V1Quote.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_quotes_symbol_id_current_get**
> V1QuoteTrade v1_quotes_symbol_id_current_get(symbol_id => $symbol_id)

Current quotes for a specific symbol

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::QuotesApi;
my $api_instance = WWW::OpenAPIClient::QuotesApi->new(

    # Configure API key authorization: APIKey
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
    # Configure bearer access token for authorization: JWT
    access_token => 'YOUR_BEARER_TOKEN',
    
);

my $symbol_id = "symbol_id_example"; # string | The symbol identifier (from the Metadata -> Symbols)

eval {
    my $result = $api_instance->v1_quotes_symbol_id_current_get(symbol_id => $symbol_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling QuotesApi->v1_quotes_symbol_id_current_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol_id** | **string**| The symbol identifier (from the Metadata -&gt; Symbols) | 

### Return type

[**V1QuoteTrade**](V1QuoteTrade.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_quotes_symbol_id_history_get**
> ARRAY[V1Quote] v1_quotes_symbol_id_history_get(symbol_id => $symbol_id, date => $date, time_start => $time_start, time_end => $time_end, limit => $limit)

Historical data

Get historical quote updates within requested time range, returned in time ascending order.  :::warning The 'time_start' and 'time_end' parameters must be from the same day as this endpoint provides intraday data only for specific day. Please use the 'date' parameter instead for querying data for a specific day without filter. :::

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::QuotesApi;
my $api_instance = WWW::OpenAPIClient::QuotesApi->new(

    # Configure API key authorization: APIKey
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
    # Configure bearer access token for authorization: JWT
    access_token => 'YOUR_BEARER_TOKEN',
    
);

my $symbol_id = "symbol_id_example"; # string | Symbol identifier for requested timeseries (from the Metadata -> Symbols)
my $date = "date_example"; # string | Date in ISO 8601, returned data is for the whole given day (preferred method, required if 'time_start' is not provided)
my $time_start = "time_start_example"; # string | Starting time in ISO 8601
my $time_end = "time_end_example"; # string | Timeseries ending time in ISO 8601
my $limit = 100; # int | Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)

eval {
    my $result = $api_instance->v1_quotes_symbol_id_history_get(symbol_id => $symbol_id, date => $date, time_start => $time_start, time_end => $time_end, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling QuotesApi->v1_quotes_symbol_id_history_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol_id** | **string**| Symbol identifier for requested timeseries (from the Metadata -&gt; Symbols) | 
 **date** | **string**| Date in ISO 8601, returned data is for the whole given day (preferred method, required if &#39;time_start&#39; is not provided) | [optional] 
 **time_start** | **string**| Starting time in ISO 8601 | [optional] 
 **time_end** | **string**| Timeseries ending time in ISO 8601 | [optional] 
 **limit** | **int**| Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**ARRAY[V1Quote]**](V1Quote.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_quotes_symbol_id_latest_get**
> ARRAY[V1Quote] v1_quotes_symbol_id_latest_get(symbol_id => $symbol_id, limit => $limit)

Latest quote updates for a specific symbol

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::QuotesApi;
my $api_instance = WWW::OpenAPIClient::QuotesApi->new(

    # Configure API key authorization: APIKey
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
    # Configure bearer access token for authorization: JWT
    access_token => 'YOUR_BEARER_TOKEN',
    
);

my $symbol_id = "symbol_id_example"; # string | Symbol identifier of requested timeseries (from the Metadata -> Symbols)
my $limit = 100; # int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)

eval {
    my $result = $api_instance->v1_quotes_symbol_id_latest_get(symbol_id => $symbol_id, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling QuotesApi->v1_quotes_symbol_id_latest_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol_id** | **string**| Symbol identifier of requested timeseries (from the Metadata -&gt; Symbols) | 
 **limit** | **int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**ARRAY[V1Quote]**](V1Quote.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

