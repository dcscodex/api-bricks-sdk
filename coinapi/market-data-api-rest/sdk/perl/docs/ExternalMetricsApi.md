# WWW::OpenAPIClient::ExternalMetricsApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::ExternalMetricsApi;
```

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_externalmetrics_asset_history_get**](ExternalMetricsApi.md#v1_externalmetrics_asset_history_get) | **GET** /v1/externalmetrics/asset/history | Historical metrics for the asset
[**v1_externalmetrics_asset_listing_get**](ExternalMetricsApi.md#v1_externalmetrics_asset_listing_get) | **GET** /v1/externalmetrics/asset/listing | Listing of metrics available for specific asset
[**v1_externalmetrics_chain_history_get**](ExternalMetricsApi.md#v1_externalmetrics_chain_history_get) | **GET** /v1/externalmetrics/chain/history | Historical metrics for the chain
[**v1_externalmetrics_chain_listing_get**](ExternalMetricsApi.md#v1_externalmetrics_chain_listing_get) | **GET** /v1/externalmetrics/chain/listing | Listing of metrics available for specific chain
[**v1_externalmetrics_exchange_history_get**](ExternalMetricsApi.md#v1_externalmetrics_exchange_history_get) | **GET** /v1/externalmetrics/exchange/history | Historical metrics for the exchange
[**v1_externalmetrics_exchange_listing_get**](ExternalMetricsApi.md#v1_externalmetrics_exchange_listing_get) | **GET** /v1/externalmetrics/exchange/listing | Listing of metrics available for specific exchange
[**v1_externalmetrics_listing_get**](ExternalMetricsApi.md#v1_externalmetrics_listing_get) | **GET** /v1/externalmetrics/listing | Listing of all supported metrics


# **v1_externalmetrics_asset_history_get**
> ARRAY[object] v1_externalmetrics_asset_history_get(metric_id => $metric_id, asset_id => $asset_id, time_start => $time_start, time_end => $time_end, time_format => $time_format, period_id => $period_id, limit => $limit)

Historical metrics for the asset

Get asset metrics history.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ExternalMetricsApi;
my $api_instance = WWW::OpenAPIClient::ExternalMetricsApi->new(

    # Configure API key authorization: APIKey
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
    # Configure bearer access token for authorization: JWT
    access_token => 'YOUR_BEARER_TOKEN',
    
);

my $metric_id = "metric_id_example"; # string | Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD`)
my $asset_id = "asset_id_example"; # string | Asset identifier (e.g., `USDC`, `USDT`)
my $time_start = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | Starting time in ISO 8601
my $time_end = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | Ending time in ISO 8601
my $time_format = "time_format_example"; # string | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
my $period_id = "period_id_example"; # string | Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN`
my $limit = 100; # int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)

eval {
    my $result = $api_instance->v1_externalmetrics_asset_history_get(metric_id => $metric_id, asset_id => $asset_id, time_start => $time_start, time_end => $time_end, time_format => $time_format, period_id => $period_id, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ExternalMetricsApi->v1_externalmetrics_asset_history_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metric_id** | **string**| Metric identifier (e.g., &#x60;TVL&#x60;, &#x60;STABLES_BRIDGED_USD&#x60;) | 
 **asset_id** | **string**| Asset identifier (e.g., &#x60;USDC&#x60;, &#x60;USDT&#x60;) | 
 **time_start** | **DATE_TIME**| Starting time in ISO 8601 | [optional] 
 **time_end** | **DATE_TIME**| Ending time in ISO 8601 | [optional] 
 **time_format** | **string**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] 
 **period_id** | **string**| Identifier of requested timeseries period (e.g. &#x60;1MIN&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1MIN&#x60; | [optional] 
 **limit** | **int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

**ARRAY[object]**

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_externalmetrics_asset_listing_get**
> ARRAY[V1MetricInfo] v1_externalmetrics_asset_listing_get(asset_id => $asset_id)

Listing of metrics available for specific asset

Get all metrics that are actually available for the specified asset.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ExternalMetricsApi;
my $api_instance = WWW::OpenAPIClient::ExternalMetricsApi->new(

    # Configure API key authorization: APIKey
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
    # Configure bearer access token for authorization: JWT
    access_token => 'YOUR_BEARER_TOKEN',
    
);

my $asset_id = "asset_id_example"; # string | Asset identifier (e.g., USDC, USDT)

eval {
    my $result = $api_instance->v1_externalmetrics_asset_listing_get(asset_id => $asset_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ExternalMetricsApi->v1_externalmetrics_asset_listing_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asset_id** | **string**| Asset identifier (e.g., USDC, USDT) | 

### Return type

[**ARRAY[V1MetricInfo]**](V1MetricInfo.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_externalmetrics_chain_history_get**
> ARRAY[object] v1_externalmetrics_chain_history_get(metric_id => $metric_id, chain_id => $chain_id, time_start => $time_start, time_end => $time_end, time_format => $time_format, period_id => $period_id, limit => $limit)

Historical metrics for the chain

Get chain metrics history.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ExternalMetricsApi;
my $api_instance = WWW::OpenAPIClient::ExternalMetricsApi->new(

    # Configure API key authorization: APIKey
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
    # Configure bearer access token for authorization: JWT
    access_token => 'YOUR_BEARER_TOKEN',
    
);

my $metric_id = "metric_id_example"; # string | Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD`)
my $chain_id = "chain_id_example"; # string | Chain identifier (e.g., `Ethereum`, `Arbitrum`)
my $time_start = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | Starting time in ISO 8601
my $time_end = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | Ending time in ISO 8601
my $time_format = "time_format_example"; # string | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
my $period_id = "period_id_example"; # string | Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN`
my $limit = 100; # int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)

eval {
    my $result = $api_instance->v1_externalmetrics_chain_history_get(metric_id => $metric_id, chain_id => $chain_id, time_start => $time_start, time_end => $time_end, time_format => $time_format, period_id => $period_id, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ExternalMetricsApi->v1_externalmetrics_chain_history_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metric_id** | **string**| Metric identifier (e.g., &#x60;TVL&#x60;, &#x60;STABLES_BRIDGED_USD&#x60;) | 
 **chain_id** | **string**| Chain identifier (e.g., &#x60;Ethereum&#x60;, &#x60;Arbitrum&#x60;) | 
 **time_start** | **DATE_TIME**| Starting time in ISO 8601 | [optional] 
 **time_end** | **DATE_TIME**| Ending time in ISO 8601 | [optional] 
 **time_format** | **string**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] 
 **period_id** | **string**| Identifier of requested timeseries period (e.g. &#x60;1MIN&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1MIN&#x60; | [optional] 
 **limit** | **int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

**ARRAY[object]**

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_externalmetrics_chain_listing_get**
> ARRAY[V1MetricInfo] v1_externalmetrics_chain_listing_get(chain_id => $chain_id)

Listing of metrics available for specific chain

Get all metrics that are actually available for the specified blockchain chain.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ExternalMetricsApi;
my $api_instance = WWW::OpenAPIClient::ExternalMetricsApi->new(

    # Configure API key authorization: APIKey
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
    # Configure bearer access token for authorization: JWT
    access_token => 'YOUR_BEARER_TOKEN',
    
);

my $chain_id = "chain_id_example"; # string | Chain identifier (e.g., ETHEREUM, ARBITRUM)

eval {
    my $result = $api_instance->v1_externalmetrics_chain_listing_get(chain_id => $chain_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ExternalMetricsApi->v1_externalmetrics_chain_listing_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **string**| Chain identifier (e.g., ETHEREUM, ARBITRUM) | 

### Return type

[**ARRAY[V1MetricInfo]**](V1MetricInfo.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_externalmetrics_exchange_history_get**
> ARRAY[object] v1_externalmetrics_exchange_history_get(metric_id => $metric_id, exchange_id => $exchange_id, time_start => $time_start, time_end => $time_end, time_format => $time_format, period_id => $period_id, limit => $limit)

Historical metrics for the exchange

Get exchange metrics history.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ExternalMetricsApi;
my $api_instance = WWW::OpenAPIClient::ExternalMetricsApi->new(

    # Configure API key authorization: APIKey
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
    # Configure bearer access token for authorization: JWT
    access_token => 'YOUR_BEARER_TOKEN',
    
);

my $metric_id = "metric_id_example"; # string | Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD`)
my $exchange_id = "exchange_id_example"; # string | Exchange identifier (e.g., `BINANCE`, `UNISWAP-V3-ETHEREUM`)
my $time_start = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | Starting time in ISO 8601
my $time_end = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | Ending time in ISO 8601
my $time_format = "time_format_example"; # string | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
my $period_id = "period_id_example"; # string | Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN`
my $limit = 100; # int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)

eval {
    my $result = $api_instance->v1_externalmetrics_exchange_history_get(metric_id => $metric_id, exchange_id => $exchange_id, time_start => $time_start, time_end => $time_end, time_format => $time_format, period_id => $period_id, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ExternalMetricsApi->v1_externalmetrics_exchange_history_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metric_id** | **string**| Metric identifier (e.g., &#x60;TVL&#x60;, &#x60;STABLES_BRIDGED_USD&#x60;) | 
 **exchange_id** | **string**| Exchange identifier (e.g., &#x60;BINANCE&#x60;, &#x60;UNISWAP-V3-ETHEREUM&#x60;) | 
 **time_start** | **DATE_TIME**| Starting time in ISO 8601 | [optional] 
 **time_end** | **DATE_TIME**| Ending time in ISO 8601 | [optional] 
 **time_format** | **string**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] 
 **period_id** | **string**| Identifier of requested timeseries period (e.g. &#x60;1MIN&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1MIN&#x60; | [optional] 
 **limit** | **int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

**ARRAY[object]**

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_externalmetrics_exchange_listing_get**
> ARRAY[V1MetricInfo] v1_externalmetrics_exchange_listing_get(exchange_id => $exchange_id)

Listing of metrics available for specific exchange

Get all metrics that are actually available for the specified exchange.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ExternalMetricsApi;
my $api_instance = WWW::OpenAPIClient::ExternalMetricsApi->new(

    # Configure API key authorization: APIKey
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
    # Configure bearer access token for authorization: JWT
    access_token => 'YOUR_BEARER_TOKEN',
    
);

my $exchange_id = "exchange_id_example"; # string | Exchange identifier (e.g., BINANCE, UNISWAP-V3-ETHEREUM)

eval {
    my $result = $api_instance->v1_externalmetrics_exchange_listing_get(exchange_id => $exchange_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ExternalMetricsApi->v1_externalmetrics_exchange_listing_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **string**| Exchange identifier (e.g., BINANCE, UNISWAP-V3-ETHEREUM) | 

### Return type

[**ARRAY[V1MetricInfo]**](V1MetricInfo.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_externalmetrics_listing_get**
> ARRAY[V1MetricInfo] v1_externalmetrics_listing_get()

Listing of all supported metrics

Get all metrics available in the system.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ExternalMetricsApi;
my $api_instance = WWW::OpenAPIClient::ExternalMetricsApi->new(

    # Configure API key authorization: APIKey
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
    # Configure bearer access token for authorization: JWT
    access_token => 'YOUR_BEARER_TOKEN',
    
);


eval {
    my $result = $api_instance->v1_externalmetrics_listing_get();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ExternalMetricsApi->v1_externalmetrics_listing_get: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[V1MetricInfo]**](V1MetricInfo.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

