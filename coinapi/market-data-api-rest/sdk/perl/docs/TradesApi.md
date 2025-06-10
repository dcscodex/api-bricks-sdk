# WWW::OpenAPIClient::TradesApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::TradesApi;
```

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_trades_latest_get**](TradesApi.md#v1_trades_latest_get) | **GET** /v1/trades/latest | Latest data
[**v1_trades_symbol_id_history_get**](TradesApi.md#v1_trades_symbol_id_history_get) | **GET** /v1/trades/{symbol_id}/history | Historical data
[**v1_trades_symbol_id_latest_get**](TradesApi.md#v1_trades_symbol_id_latest_get) | **GET** /v1/trades/{symbol_id}/latest | Latest data by symbol_id


# **v1_trades_latest_get**
> ARRAY[V1Trade] v1_trades_latest_get(filter_symbol_id => $filter_symbol_id, include_id => $include_id, limit => $limit)

Latest data

Get latest trades executed up to 1 minute ago. Latest data is always returned in time descending order.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::TradesApi;
my $api_instance = WWW::OpenAPIClient::TradesApi->new(

    # Configure API key authorization: ApiKey
    api_key => {'X-CoinAPI-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'X-CoinAPI-Key' => 'Bearer'},
);

my $filter_symbol_id = "filter_symbol_id_example"; # string | Comma or semicolon delimited parts of symbol identifier used to filter response. (optional)
my $include_id = false; # boolean | Information that additional exchange trade identifier should be included in the `id_trade` parameter of the trade if exchange providing identifiers.
my $limit = 100; # int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)

eval {
    my $result = $api_instance->v1_trades_latest_get(filter_symbol_id => $filter_symbol_id, include_id => $include_id, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TradesApi->v1_trades_latest_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_symbol_id** | **string**| Comma or semicolon delimited parts of symbol identifier used to filter response. (optional) | [optional] 
 **include_id** | **boolean**| Information that additional exchange trade identifier should be included in the &#x60;id_trade&#x60; parameter of the trade if exchange providing identifiers. | [optional] [default to false]
 **limit** | **int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**ARRAY[V1Trade]**](V1Trade.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_trades_symbol_id_history_get**
> ARRAY[V1Trade] v1_trades_symbol_id_history_get(symbol_id => $symbol_id, date => $date, time_start => $time_start, time_end => $time_end, limit => $limit, include_id => $include_id)

Historical data

Get history transactions from specific symbol, returned in time ascending order.    :::warning  The 'time_start' and 'time_end' parameters must be from the same day as this endpoint provides intraday data only for specific day.  Please use the 'date' parameter instead for querying data for a specific day without filter.  :::

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::TradesApi;
my $api_instance = WWW::OpenAPIClient::TradesApi->new(

    # Configure API key authorization: ApiKey
    api_key => {'X-CoinAPI-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'X-CoinAPI-Key' => 'Bearer'},
);

my $symbol_id = "symbol_id_example"; # string | Symbol identifier for requested timeseries (from the Metadata -> Symbols)
my $date = "date_example"; # string | Date in ISO 8601, returned data is for the whole given day (required if 'time_start' is not provided)
my $time_start = "time_start_example"; # string | Starting time in ISO 8601
my $time_end = "time_end_example"; # string | Timeseries ending time in ISO 8601
my $limit = 100; # int | Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
my $include_id = false; # boolean | Information that additional exchange trade identifier should be included in the `id_trade` parameter of the trade if exchange providing identifiers.

eval {
    my $result = $api_instance->v1_trades_symbol_id_history_get(symbol_id => $symbol_id, date => $date, time_start => $time_start, time_end => $time_end, limit => $limit, include_id => $include_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TradesApi->v1_trades_symbol_id_history_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol_id** | **string**| Symbol identifier for requested timeseries (from the Metadata -&gt; Symbols) | 
 **date** | **string**| Date in ISO 8601, returned data is for the whole given day (required if &#39;time_start&#39; is not provided) | [optional] 
 **time_start** | **string**| Starting time in ISO 8601 | [optional] 
 **time_end** | **string**| Timeseries ending time in ISO 8601 | [optional] 
 **limit** | **int**| Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]
 **include_id** | **boolean**| Information that additional exchange trade identifier should be included in the &#x60;id_trade&#x60; parameter of the trade if exchange providing identifiers. | [optional] [default to false]

### Return type

[**ARRAY[V1Trade]**](V1Trade.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_trades_symbol_id_latest_get**
> ARRAY[V1Trade] v1_trades_symbol_id_latest_get(symbol_id => $symbol_id, limit => $limit, include_id => $include_id)

Latest data by symbol_id

Get latest trades executed up to 1 minute ago. Latest data is always returned in time descending order.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::TradesApi;
my $api_instance = WWW::OpenAPIClient::TradesApi->new(

    # Configure API key authorization: ApiKey
    api_key => {'X-CoinAPI-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'X-CoinAPI-Key' => 'Bearer'},
);

my $symbol_id = "symbol_id_example"; # string | Symbol identifier for requested timeseries (from the Metadata -> Symbols)
my $limit = 100; # int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
my $include_id = false; # boolean | Information that additional exchange trade identifier should be included in the `id_trade` parameter of the trade if exchange providing identifiers.

eval {
    my $result = $api_instance->v1_trades_symbol_id_latest_get(symbol_id => $symbol_id, limit => $limit, include_id => $include_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TradesApi->v1_trades_symbol_id_latest_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol_id** | **string**| Symbol identifier for requested timeseries (from the Metadata -&gt; Symbols) | 
 **limit** | **int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]
 **include_id** | **boolean**| Information that additional exchange trade identifier should be included in the &#x60;id_trade&#x60; parameter of the trade if exchange providing identifiers. | [optional] [default to false]

### Return type

[**ARRAY[V1Trade]**](V1Trade.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

