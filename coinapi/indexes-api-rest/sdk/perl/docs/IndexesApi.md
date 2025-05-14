# WWW::OpenAPIClient::IndexesApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::IndexesApi;
```

All URIs are relative to *https://rest-api.indexes.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_indexdef_input_data_index_definition_id_all_get**](IndexesApi.md#v1_indexdef_input_data_index_definition_id_all_get) | **GET** /v1/indexdef/input-data/{index_definition_id}/all | Returns all data inputs for a specific index definition
[**v1_indexdef_input_data_index_definition_id_get**](IndexesApi.md#v1_indexdef_input_data_index_definition_id_get) | **GET** /v1/indexdef/input-data/{index_definition_id} | Returns data inputs for certain index definition and time
[**v1_indexdef_multiasset_get**](IndexesApi.md#v1_indexdef_multiasset_get) | **GET** /v1/indexdef/multiasset | Get all multi-asset weights
[**v1_indexdef_multiasset_index_id_get**](IndexesApi.md#v1_indexdef_multiasset_index_id_get) | **GET** /v1/indexdef/multiasset/{index_id} | Get multi-asset weights for specific index
[**v1_indexes_get**](IndexesApi.md#v1_indexes_get) | **GET** /v1/indexes | List indexes
[**v1_indexes_index_definition_id_current_snapshot_get**](IndexesApi.md#v1_indexes_index_definition_id_current_snapshot_get) | **GET** /v1/indexes/{index_definition_id}/currentSnapshot | Current Index Values for index definition
[**v1_indexes_index_definition_id_history_snapshot_get**](IndexesApi.md#v1_indexes_index_definition_id_history_snapshot_get) | **GET** /v1/indexes/{index_definition_id}/historySnapshot | Historical Index Values for index definition
[**v1_indexes_index_id_current_get**](IndexesApi.md#v1_indexes_index_id_current_get) | **GET** /v1/indexes/{index_id}/current | Current Index Value
[**v1_indexes_index_id_history_get**](IndexesApi.md#v1_indexes_index_id_history_get) | **GET** /v1/indexes/{index_id}/history | Historical Index Value w/Composition
[**v1_indexes_index_id_timeseries_get**](IndexesApi.md#v1_indexes_index_id_timeseries_get) | **GET** /v1/indexes/{index_id}/timeseries | Timeseries Index Value


# **v1_indexdef_input_data_index_definition_id_all_get**
> ARRAY[IndexesIndexDefinitionInputData] v1_indexdef_input_data_index_definition_id_all_get(index_definition_id => $index_definition_id)

Returns all data inputs for a specific index definition

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::IndexesApi;
my $api_instance = WWW::OpenAPIClient::IndexesApi->new(

    # Configure API key authorization: ApiKey
    api_key => {'X-CoinAPI-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'X-CoinAPI-Key' => 'Bearer'},
);

my $index_definition_id = "index_definition_id_example"; # string | 

eval {
    my $result = $api_instance->v1_indexdef_input_data_index_definition_id_all_get(index_definition_id => $index_definition_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling IndexesApi->v1_indexdef_input_data_index_definition_id_all_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **index_definition_id** | **string**|  | 

### Return type

[**ARRAY[IndexesIndexDefinitionInputData]**](IndexesIndexDefinitionInputData.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_indexdef_input_data_index_definition_id_get**
> ARRAY[IndexesIndexDefinitionSnapshotEntry] v1_indexdef_input_data_index_definition_id_get(index_definition_id => $index_definition_id, time => $time, enabled_only => $enabled_only, pending_only => $pending_only, filter_asset_id => $filter_asset_id, with_status_info => $with_status_info)

Returns data inputs for certain index definition and time

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::IndexesApi;
my $api_instance = WWW::OpenAPIClient::IndexesApi->new(

    # Configure API key authorization: ApiKey
    api_key => {'X-CoinAPI-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'X-CoinAPI-Key' => 'Bearer'},
);

my $index_definition_id = "index_definition_id_example"; # string | 
my $time = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $enabled_only = false; # boolean | 
my $pending_only = false; # boolean | 
my $filter_asset_id = "filter_asset_id_example"; # string | 
my $with_status_info = false; # boolean | 

eval {
    my $result = $api_instance->v1_indexdef_input_data_index_definition_id_get(index_definition_id => $index_definition_id, time => $time, enabled_only => $enabled_only, pending_only => $pending_only, filter_asset_id => $filter_asset_id, with_status_info => $with_status_info);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling IndexesApi->v1_indexdef_input_data_index_definition_id_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **index_definition_id** | **string**|  | 
 **time** | **DATE_TIME**|  | [optional] 
 **enabled_only** | **boolean**|  | [optional] [default to false]
 **pending_only** | **boolean**|  | [optional] [default to false]
 **filter_asset_id** | **string**|  | [optional] 
 **with_status_info** | **boolean**|  | [optional] [default to false]

### Return type

[**ARRAY[IndexesIndexDefinitionSnapshotEntry]**](IndexesIndexDefinitionSnapshotEntry.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_indexdef_multiasset_get**
> ARRAY[IndexesIndexMultiAssetWeight] v1_indexdef_multiasset_get()

Get all multi-asset weights

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::IndexesApi;
my $api_instance = WWW::OpenAPIClient::IndexesApi->new(

    # Configure API key authorization: ApiKey
    api_key => {'X-CoinAPI-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'X-CoinAPI-Key' => 'Bearer'},
);


eval {
    my $result = $api_instance->v1_indexdef_multiasset_get();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling IndexesApi->v1_indexdef_multiasset_get: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[IndexesIndexMultiAssetWeight]**](IndexesIndexMultiAssetWeight.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_indexdef_multiasset_index_id_get**
> ARRAY[IndexesIndexMultiAssetWeight] v1_indexdef_multiasset_index_id_get(index_id => $index_id)

Get multi-asset weights for specific index

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::IndexesApi;
my $api_instance = WWW::OpenAPIClient::IndexesApi->new(

    # Configure API key authorization: ApiKey
    api_key => {'X-CoinAPI-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'X-CoinAPI-Key' => 'Bearer'},
);

my $index_id = "index_id_example"; # string | 

eval {
    my $result = $api_instance->v1_indexdef_multiasset_index_id_get(index_id => $index_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling IndexesApi->v1_indexdef_multiasset_index_id_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **index_id** | **string**|  | 

### Return type

[**ARRAY[IndexesIndexMultiAssetWeight]**](IndexesIndexMultiAssetWeight.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_indexes_get**
> ARRAY[IndexesIndexIdentifier] v1_indexes_get()

List indexes

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::IndexesApi;
my $api_instance = WWW::OpenAPIClient::IndexesApi->new(

    # Configure API key authorization: ApiKey
    api_key => {'X-CoinAPI-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'X-CoinAPI-Key' => 'Bearer'},
);


eval {
    my $result = $api_instance->v1_indexes_get();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling IndexesApi->v1_indexes_get: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[IndexesIndexIdentifier]**](IndexesIndexIdentifier.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_indexes_index_definition_id_current_snapshot_get**
> ARRAY[IndexesIndexDefinitionSnapshotEntry] v1_indexes_index_definition_id_current_snapshot_get(index_definition_id => $index_definition_id)

Current Index Values for index definition

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::IndexesApi;
my $api_instance = WWW::OpenAPIClient::IndexesApi->new(

    # Configure API key authorization: ApiKey
    api_key => {'X-CoinAPI-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'X-CoinAPI-Key' => 'Bearer'},
);

my $index_definition_id = "index_definition_id_example"; # string | 

eval {
    my $result = $api_instance->v1_indexes_index_definition_id_current_snapshot_get(index_definition_id => $index_definition_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling IndexesApi->v1_indexes_index_definition_id_current_snapshot_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **index_definition_id** | **string**|  | 

### Return type

[**ARRAY[IndexesIndexDefinitionSnapshotEntry]**](IndexesIndexDefinitionSnapshotEntry.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_indexes_index_definition_id_history_snapshot_get**
> ARRAY[IndexesIndexDefinitionSnapshotEntry] v1_indexes_index_definition_id_history_snapshot_get(index_definition_id => $index_definition_id, time => $time)

Historical Index Values for index definition

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::IndexesApi;
my $api_instance = WWW::OpenAPIClient::IndexesApi->new(

    # Configure API key authorization: ApiKey
    api_key => {'X-CoinAPI-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'X-CoinAPI-Key' => 'Bearer'},
);

my $index_definition_id = "index_definition_id_example"; # string | 
my $time = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 

eval {
    my $result = $api_instance->v1_indexes_index_definition_id_history_snapshot_get(index_definition_id => $index_definition_id, time => $time);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling IndexesApi->v1_indexes_index_definition_id_history_snapshot_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **index_definition_id** | **string**|  | 
 **time** | **DATE_TIME**|  | [optional] 

### Return type

[**ARRAY[IndexesIndexDefinitionSnapshotEntry]**](IndexesIndexDefinitionSnapshotEntry.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_indexes_index_id_current_get**
> IndexesIndexValue v1_indexes_index_id_current_get(index_id => $index_id)

Current Index Value

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::IndexesApi;
my $api_instance = WWW::OpenAPIClient::IndexesApi->new(

    # Configure API key authorization: ApiKey
    api_key => {'X-CoinAPI-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'X-CoinAPI-Key' => 'Bearer'},
);

my $index_id = "index_id_example"; # string | 

eval {
    my $result = $api_instance->v1_indexes_index_id_current_get(index_id => $index_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling IndexesApi->v1_indexes_index_id_current_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **index_id** | **string**|  | 

### Return type

[**IndexesIndexValue**](IndexesIndexValue.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_indexes_index_id_history_get**
> ARRAY[IndexesIndexValue] v1_indexes_index_id_history_get(index_id => $index_id, time_start => $time_start, time_end => $time_end, limit => $limit)

Historical Index Value w/Composition

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::IndexesApi;
my $api_instance = WWW::OpenAPIClient::IndexesApi->new(

    # Configure API key authorization: ApiKey
    api_key => {'X-CoinAPI-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'X-CoinAPI-Key' => 'Bearer'},
);

my $index_id = "index_id_example"; # string | 
my $time_start = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $time_end = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $limit = 100; # int | 

eval {
    my $result = $api_instance->v1_indexes_index_id_history_get(index_id => $index_id, time_start => $time_start, time_end => $time_end, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling IndexesApi->v1_indexes_index_id_history_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **index_id** | **string**|  | 
 **time_start** | **DATE_TIME**|  | [optional] 
 **time_end** | **DATE_TIME**|  | [optional] 
 **limit** | **int**|  | [optional] [default to 100]

### Return type

[**ARRAY[IndexesIndexValue]**](IndexesIndexValue.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_indexes_index_id_timeseries_get**
> ARRAY[IndexesIndexTimeseriesItem] v1_indexes_index_id_timeseries_get(index_id => $index_id, period_id => $period_id, time_start => $time_start, time_end => $time_end, limit => $limit)

Timeseries Index Value

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::IndexesApi;
my $api_instance = WWW::OpenAPIClient::IndexesApi->new(

    # Configure API key authorization: ApiKey
    api_key => {'X-CoinAPI-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'X-CoinAPI-Key' => 'Bearer'},
);

my $index_id = "index_id_example"; # string | 
my $period_id = "period_id_example"; # string | Identifier of requested timeseries period (e.g. `5SEC` or `1DAY`)
my $time_start = "time_start_example"; # string | Timeseries starting time in ISO 8601
my $time_end = "time_end_example"; # string | Timeseries ending time in ISO 8601
my $limit = 100; # int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)

eval {
    my $result = $api_instance->v1_indexes_index_id_timeseries_get(index_id => $index_id, period_id => $period_id, time_start => $time_start, time_end => $time_end, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling IndexesApi->v1_indexes_index_id_timeseries_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **index_id** | **string**|  | 
 **period_id** | **string**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;1DAY&#x60;) | 
 **time_start** | **string**| Timeseries starting time in ISO 8601 | 
 **time_end** | **string**| Timeseries ending time in ISO 8601 | 
 **limit** | **int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**ARRAY[IndexesIndexTimeseriesItem]**](IndexesIndexTimeseriesItem.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

