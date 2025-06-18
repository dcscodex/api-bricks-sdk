# WWW::OpenAPIClient::MetricsV1Api

## Load the API package
```perl
use WWW::OpenAPIClient::Object::MetricsV1Api;
```

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_metrics_asset_current_get**](MetricsV1Api.md#v1_metrics_asset_current_get) | **GET** /v1/metrics/asset/current | Current metrics for given asset
[**v1_metrics_asset_history_get**](MetricsV1Api.md#v1_metrics_asset_history_get) | **GET** /v1/metrics/asset/history | Historical metrics for asset
[**v1_metrics_asset_listing_get**](MetricsV1Api.md#v1_metrics_asset_listing_get) | **GET** /v1/metrics/asset/listing | Listing of all supported metrics for asset
[**v1_metrics_exchange_current_get**](MetricsV1Api.md#v1_metrics_exchange_current_get) | **GET** /v1/metrics/exchange/current | Current metrics for given exchange
[**v1_metrics_exchange_history_get**](MetricsV1Api.md#v1_metrics_exchange_history_get) | **GET** /v1/metrics/exchange/history | Historical metrics for the exchange
[**v1_metrics_exchange_listing_get**](MetricsV1Api.md#v1_metrics_exchange_listing_get) | **GET** /v1/metrics/exchange/listing | Listing of all supported exchange metrics
[**v1_metrics_listing_get**](MetricsV1Api.md#v1_metrics_listing_get) | **GET** /v1/metrics/listing | Listing of all supported metrics by CoinAPI
[**v1_metrics_symbol_current_get**](MetricsV1Api.md#v1_metrics_symbol_current_get) | **GET** /v1/metrics/symbol/current | Current metrics for given symbol
[**v1_metrics_symbol_history_get**](MetricsV1Api.md#v1_metrics_symbol_history_get) | **GET** /v1/metrics/symbol/history | Historical metrics for symbol
[**v1_metrics_symbol_listing_get**](MetricsV1Api.md#v1_metrics_symbol_listing_get) | **GET** /v1/metrics/symbol/listing | Listing of all supported metrics for symbol


# **v1_metrics_asset_current_get**
> ARRAY[V1GeneralData] v1_metrics_asset_current_get(metric_id => $metric_id, asset_id => $asset_id, asset_id_external => $asset_id_external, exchange_id => $exchange_id)

Current metrics for given asset

Get current asset metrics.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MetricsV1Api;
my $api_instance = WWW::OpenAPIClient::MetricsV1Api->new(

    # Configure API key authorization: APIKey
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
    # Configure bearer access token for authorization: JWT
    access_token => 'YOUR_BEARER_TOKEN',
    
);

my $metric_id = "metric_id_example"; # string | Metric identifier (from the Metrics -> Listing)
my $asset_id = "asset_id_example"; # string | Asset identifier (from the Metadata -> Assets)
my $asset_id_external = "asset_id_external_example"; # string | Exchange asset identifier
my $exchange_id = "exchange_id_example"; # string | Exchange identifier (from the Metadata -> Exchanges)

eval {
    my $result = $api_instance->v1_metrics_asset_current_get(metric_id => $metric_id, asset_id => $asset_id, asset_id_external => $asset_id_external, exchange_id => $exchange_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MetricsV1Api->v1_metrics_asset_current_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metric_id** | **string**| Metric identifier (from the Metrics -&gt; Listing) | [optional] 
 **asset_id** | **string**| Asset identifier (from the Metadata -&gt; Assets) | [optional] 
 **asset_id_external** | **string**| Exchange asset identifier | [optional] 
 **exchange_id** | **string**| Exchange identifier (from the Metadata -&gt; Exchanges) | [optional] 

### Return type

[**ARRAY[V1GeneralData]**](V1GeneralData.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_metrics_asset_history_get**
> ARRAY[V1MetricData] v1_metrics_asset_history_get(metric_id => $metric_id, exchange_id => $exchange_id, asset_id => $asset_id, asset_id_external => $asset_id_external, time_start => $time_start, time_end => $time_end, time_format => $time_format, period_id => $period_id, limit => $limit)

Historical metrics for asset

Get asset metrics history.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MetricsV1Api;
my $api_instance = WWW::OpenAPIClient::MetricsV1Api->new(

    # Configure API key authorization: APIKey
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
    # Configure bearer access token for authorization: JWT
    access_token => 'YOUR_BEARER_TOKEN',
    
);

my $metric_id = "metric_id_example"; # string | Metric identifier (from the Metrics -> Listing)
my $exchange_id = "exchange_id_example"; # string | Exchange identifier (from the Metadata -> Exchanges)
my $asset_id = "asset_id_example"; # string | Asset identifier (from the Metadata -> Assets)
my $asset_id_external = "asset_id_external_example"; # string | Exchange asset identifier
my $time_start = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | Starting time in ISO 8601
my $time_end = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | Ending time in ISO 8601
my $time_format = "time_format_example"; # string | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
my $period_id = "period_id_example"; # string | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`), default value is `1SEC`
my $limit = 100; # int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)

eval {
    my $result = $api_instance->v1_metrics_asset_history_get(metric_id => $metric_id, exchange_id => $exchange_id, asset_id => $asset_id, asset_id_external => $asset_id_external, time_start => $time_start, time_end => $time_end, time_format => $time_format, period_id => $period_id, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MetricsV1Api->v1_metrics_asset_history_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metric_id** | **string**| Metric identifier (from the Metrics -&gt; Listing) | 
 **exchange_id** | **string**| Exchange identifier (from the Metadata -&gt; Exchanges) | 
 **asset_id** | **string**| Asset identifier (from the Metadata -&gt; Assets) | [optional] 
 **asset_id_external** | **string**| Exchange asset identifier | [optional] 
 **time_start** | **DATE_TIME**| Starting time in ISO 8601 | [optional] 
 **time_end** | **DATE_TIME**| Ending time in ISO 8601 | [optional] 
 **time_format** | **string**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] 
 **period_id** | **string**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1SEC&#x60; | [optional] 
 **limit** | **int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**ARRAY[V1MetricData]**](V1MetricData.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_metrics_asset_listing_get**
> ARRAY[V1ListingItem] v1_metrics_asset_listing_get(metric_id => $metric_id, exchange_id => $exchange_id, chain_id => $chain_id, network_id => $network_id, asset_id => $asset_id, asset_id_external => $asset_id_external)

Listing of all supported metrics for asset

Get data metrics for asset.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MetricsV1Api;
my $api_instance = WWW::OpenAPIClient::MetricsV1Api->new(

    # Configure API key authorization: APIKey
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
    # Configure bearer access token for authorization: JWT
    access_token => 'YOUR_BEARER_TOKEN',
    
);

my $metric_id = "metric_id_example"; # string | Metric identifier (from the Metrics -> Listing)
my $exchange_id = "exchange_id_example"; # string | Exchange identifier (from the Metadata -> Exchanges)
my $chain_id = "chain_id_example"; # string | Chain identifier
my $network_id = "network_id_example"; # string | Network identifier
my $asset_id = "asset_id_example"; # string | Asset identifier (from the Metadata -> Assets)
my $asset_id_external = "asset_id_external_example"; # string | The asset external identifier

eval {
    my $result = $api_instance->v1_metrics_asset_listing_get(metric_id => $metric_id, exchange_id => $exchange_id, chain_id => $chain_id, network_id => $network_id, asset_id => $asset_id, asset_id_external => $asset_id_external);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MetricsV1Api->v1_metrics_asset_listing_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metric_id** | **string**| Metric identifier (from the Metrics -&gt; Listing) | [optional] 
 **exchange_id** | **string**| Exchange identifier (from the Metadata -&gt; Exchanges) | [optional] 
 **chain_id** | **string**| Chain identifier | [optional] 
 **network_id** | **string**| Network identifier | [optional] 
 **asset_id** | **string**| Asset identifier (from the Metadata -&gt; Assets) | [optional] 
 **asset_id_external** | **string**| The asset external identifier | [optional] 

### Return type

[**ARRAY[V1ListingItem]**](V1ListingItem.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_metrics_exchange_current_get**
> ARRAY[V1GeneralData] v1_metrics_exchange_current_get(exchange_id => $exchange_id, metric_id => $metric_id)

Current metrics for given exchange

Get current exchange metrics values.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MetricsV1Api;
my $api_instance = WWW::OpenAPIClient::MetricsV1Api->new(

    # Configure API key authorization: APIKey
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
    # Configure bearer access token for authorization: JWT
    access_token => 'YOUR_BEARER_TOKEN',
    
);

my $exchange_id = "exchange_id_example"; # string | The exchange identifier (from the Metadata -> Exchanges)
my $metric_id = "metric_id_example"; # string | The metric identifier (from the Metrics -> Listing)

eval {
    my $result = $api_instance->v1_metrics_exchange_current_get(exchange_id => $exchange_id, metric_id => $metric_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MetricsV1Api->v1_metrics_exchange_current_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **string**| The exchange identifier (from the Metadata -&gt; Exchanges) | 
 **metric_id** | **string**| The metric identifier (from the Metrics -&gt; Listing) | [optional] 

### Return type

[**ARRAY[V1GeneralData]**](V1GeneralData.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_metrics_exchange_history_get**
> ARRAY[V1MetricData] v1_metrics_exchange_history_get(metric_id => $metric_id, exchange_id => $exchange_id, time_start => $time_start, time_end => $time_end, time_format => $time_format, period_id => $period_id, limit => $limit)

Historical metrics for the exchange

Get exchange metrics history.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MetricsV1Api;
my $api_instance = WWW::OpenAPIClient::MetricsV1Api->new(

    # Configure API key authorization: APIKey
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
    # Configure bearer access token for authorization: JWT
    access_token => 'YOUR_BEARER_TOKEN',
    
);

my $metric_id = "metric_id_example"; # string | Metric identifier (from the Metrics -> Listing)
my $exchange_id = "exchange_id_example"; # string | Exchange identifier (from the Metadata -> Exchanges)
my $time_start = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | Starting time in ISO 8601
my $time_end = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | Ending time in ISO 8601
my $time_format = "time_format_example"; # string | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
my $period_id = "period_id_example"; # string | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`), default value is `1SEC`
my $limit = 100; # int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)

eval {
    my $result = $api_instance->v1_metrics_exchange_history_get(metric_id => $metric_id, exchange_id => $exchange_id, time_start => $time_start, time_end => $time_end, time_format => $time_format, period_id => $period_id, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MetricsV1Api->v1_metrics_exchange_history_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metric_id** | **string**| Metric identifier (from the Metrics -&gt; Listing) | 
 **exchange_id** | **string**| Exchange identifier (from the Metadata -&gt; Exchanges) | 
 **time_start** | **DATE_TIME**| Starting time in ISO 8601 | [optional] 
 **time_end** | **DATE_TIME**| Ending time in ISO 8601 | [optional] 
 **time_format** | **string**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] 
 **period_id** | **string**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1SEC&#x60; | [optional] 
 **limit** | **int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**ARRAY[V1MetricData]**](V1MetricData.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_metrics_exchange_listing_get**
> ARRAY[V1ListingItem] v1_metrics_exchange_listing_get(exchange_id => $exchange_id, metric_id => $metric_id)

Listing of all supported exchange metrics

Get data metrics for exchange.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MetricsV1Api;
my $api_instance = WWW::OpenAPIClient::MetricsV1Api->new(

    # Configure API key authorization: APIKey
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
    # Configure bearer access token for authorization: JWT
    access_token => 'YOUR_BEARER_TOKEN',
    
);

my $exchange_id = "exchange_id_example"; # string | The exchange identifier (from the Metadata -> Exchanges)
my $metric_id = "metric_id_example"; # string | The metric identifier (from the Metrics -> Listing)

eval {
    my $result = $api_instance->v1_metrics_exchange_listing_get(exchange_id => $exchange_id, metric_id => $metric_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MetricsV1Api->v1_metrics_exchange_listing_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **string**| The exchange identifier (from the Metadata -&gt; Exchanges) | 
 **metric_id** | **string**| The metric identifier (from the Metrics -&gt; Listing) | [optional] 

### Return type

[**ARRAY[V1ListingItem]**](V1ListingItem.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_metrics_listing_get**
> ARRAY[V1Metric] v1_metrics_listing_get()

Listing of all supported metrics by CoinAPI

Get all data metrics.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MetricsV1Api;
my $api_instance = WWW::OpenAPIClient::MetricsV1Api->new(

    # Configure API key authorization: APIKey
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
    # Configure bearer access token for authorization: JWT
    access_token => 'YOUR_BEARER_TOKEN',
    
);


eval {
    my $result = $api_instance->v1_metrics_listing_get();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MetricsV1Api->v1_metrics_listing_get: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[V1Metric]**](V1Metric.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_metrics_symbol_current_get**
> ARRAY[V1GeneralData] v1_metrics_symbol_current_get(metric_id => $metric_id, symbol_id => $symbol_id, exchange_id => $exchange_id)

Current metrics for given symbol

Get current symbol metrics.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MetricsV1Api;
my $api_instance = WWW::OpenAPIClient::MetricsV1Api->new(

    # Configure API key authorization: APIKey
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
    # Configure bearer access token for authorization: JWT
    access_token => 'YOUR_BEARER_TOKEN',
    
);

my $metric_id = "metric_id_example"; # string | Metric identifier (from the Metrics -> Listing)
my $symbol_id = "symbol_id_example"; # string | Symbol identifier (from the Metadata -> Symbols)
my $exchange_id = "exchange_id_example"; # string | Exchange id (from the Metadata -> Exchanges)

eval {
    my $result = $api_instance->v1_metrics_symbol_current_get(metric_id => $metric_id, symbol_id => $symbol_id, exchange_id => $exchange_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MetricsV1Api->v1_metrics_symbol_current_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metric_id** | **string**| Metric identifier (from the Metrics -&gt; Listing) | [optional] 
 **symbol_id** | **string**| Symbol identifier (from the Metadata -&gt; Symbols) | [optional] 
 **exchange_id** | **string**| Exchange id (from the Metadata -&gt; Exchanges) | [optional] 

### Return type

[**ARRAY[V1GeneralData]**](V1GeneralData.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_metrics_symbol_history_get**
> ARRAY[V1MetricData] v1_metrics_symbol_history_get(metric_id => $metric_id, symbol_id => $symbol_id, time_start => $time_start, time_end => $time_end, time_format => $time_format, period_id => $period_id, limit => $limit)

Historical metrics for symbol

Get symbol metrics history.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MetricsV1Api;
my $api_instance = WWW::OpenAPIClient::MetricsV1Api->new(

    # Configure API key authorization: APIKey
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
    # Configure bearer access token for authorization: JWT
    access_token => 'YOUR_BEARER_TOKEN',
    
);

my $metric_id = "metric_id_example"; # string | Metric identifier (from the Metrics -> Listing)
my $symbol_id = "symbol_id_example"; # string | Symbol identifier (from the Metadata -> Symbols)
my $time_start = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | Starting time in ISO 8601
my $time_end = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | Ending time in ISO 8601
my $time_format = "time_format_example"; # string | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
my $period_id = "period_id_example"; # string | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`), default value is `1SEC`
my $limit = 100; # int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)

eval {
    my $result = $api_instance->v1_metrics_symbol_history_get(metric_id => $metric_id, symbol_id => $symbol_id, time_start => $time_start, time_end => $time_end, time_format => $time_format, period_id => $period_id, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MetricsV1Api->v1_metrics_symbol_history_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metric_id** | **string**| Metric identifier (from the Metrics -&gt; Listing) | 
 **symbol_id** | **string**| Symbol identifier (from the Metadata -&gt; Symbols) | 
 **time_start** | **DATE_TIME**| Starting time in ISO 8601 | [optional] 
 **time_end** | **DATE_TIME**| Ending time in ISO 8601 | [optional] 
 **time_format** | **string**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] 
 **period_id** | **string**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1SEC&#x60; | [optional] 
 **limit** | **int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**ARRAY[V1MetricData]**](V1MetricData.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_metrics_symbol_listing_get**
> ARRAY[V1ListingItem] v1_metrics_symbol_listing_get(metric_id => $metric_id, exchange_id => $exchange_id, symbol_id => $symbol_id)

Listing of all supported metrics for symbol

Get data metrics for symbol.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MetricsV1Api;
my $api_instance = WWW::OpenAPIClient::MetricsV1Api->new(

    # Configure API key authorization: APIKey
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
    # Configure bearer access token for authorization: JWT
    access_token => 'YOUR_BEARER_TOKEN',
    
);

my $metric_id = "metric_id_example"; # string | Metric identifier (from the Metrics -> Listing)
my $exchange_id = "exchange_id_example"; # string | Exchange identifier (from the Metadata -> Exchanges)
my $symbol_id = "symbol_id_example"; # string | Symbol identifier (from the Metadata -> Symbols)

eval {
    my $result = $api_instance->v1_metrics_symbol_listing_get(metric_id => $metric_id, exchange_id => $exchange_id, symbol_id => $symbol_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MetricsV1Api->v1_metrics_symbol_listing_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metric_id** | **string**| Metric identifier (from the Metrics -&gt; Listing) | [optional] 
 **exchange_id** | **string**| Exchange identifier (from the Metadata -&gt; Exchanges) | [optional] 
 **symbol_id** | **string**| Symbol identifier (from the Metadata -&gt; Symbols) | [optional] 

### Return type

[**ARRAY[V1ListingItem]**](V1ListingItem.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

