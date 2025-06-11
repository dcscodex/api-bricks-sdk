# OpenapiClient::IndexesApi

All URIs are relative to *https://rest-api.indexes.coinapi.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_indexdef_input_data_index_definition_id_all_get**](IndexesApi.md#v1_indexdef_input_data_index_definition_id_all_get) | **GET** /v1/indexdef/input-data/{index_definition_id}/all | Returns all data inputs for a specific index definition |
| [**v1_indexdef_input_data_index_definition_id_get**](IndexesApi.md#v1_indexdef_input_data_index_definition_id_get) | **GET** /v1/indexdef/input-data/{index_definition_id} | Returns data inputs for certain index definition and time |
| [**v1_indexdef_multiasset_get**](IndexesApi.md#v1_indexdef_multiasset_get) | **GET** /v1/indexdef/multiasset | Get all multi-asset weights |
| [**v1_indexdef_multiasset_index_id_get**](IndexesApi.md#v1_indexdef_multiasset_index_id_get) | **GET** /v1/indexdef/multiasset/{index_id} | Get multi-asset weights for specific index |
| [**v1_indexes_get**](IndexesApi.md#v1_indexes_get) | **GET** /v1/indexes | List indexes |
| [**v1_indexes_index_definition_id_current_snapshot_get**](IndexesApi.md#v1_indexes_index_definition_id_current_snapshot_get) | **GET** /v1/indexes/{index_definition_id}/currentSnapshot | Current Index Values for index definition |
| [**v1_indexes_index_definition_id_history_snapshot_get**](IndexesApi.md#v1_indexes_index_definition_id_history_snapshot_get) | **GET** /v1/indexes/{index_definition_id}/historySnapshot | Historical Index Values for index definition |
| [**v1_indexes_index_id_current_get**](IndexesApi.md#v1_indexes_index_id_current_get) | **GET** /v1/indexes/{index_id}/current | Current Index Value |
| [**v1_indexes_index_id_history_get**](IndexesApi.md#v1_indexes_index_id_history_get) | **GET** /v1/indexes/{index_id}/history | Historical Index Value w/Composition |
| [**v1_indexes_index_id_timeseries_get**](IndexesApi.md#v1_indexes_index_id_timeseries_get) | **GET** /v1/indexes/{index_id}/timeseries | Timeseries Index Value |


## v1_indexdef_input_data_index_definition_id_all_get

> <Array<IndexesIndexDefinitionInputData>> v1_indexdef_input_data_index_definition_id_all_get(index_definition_id)

Returns all data inputs for a specific index definition

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: APIKey
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'

  # Configure API key authorization: JWT
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = OpenapiClient::IndexesApi.new
index_definition_id = 'index_definition_id_example' # String | 

begin
  # Returns all data inputs for a specific index definition
  result = api_instance.v1_indexdef_input_data_index_definition_id_all_get(index_definition_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling IndexesApi->v1_indexdef_input_data_index_definition_id_all_get: #{e}"
end
```

#### Using the v1_indexdef_input_data_index_definition_id_all_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<IndexesIndexDefinitionInputData>>, Integer, Hash)> v1_indexdef_input_data_index_definition_id_all_get_with_http_info(index_definition_id)

```ruby
begin
  # Returns all data inputs for a specific index definition
  data, status_code, headers = api_instance.v1_indexdef_input_data_index_definition_id_all_get_with_http_info(index_definition_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<IndexesIndexDefinitionInputData>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling IndexesApi->v1_indexdef_input_data_index_definition_id_all_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **index_definition_id** | **String** |  |  |

### Return type

[**Array&lt;IndexesIndexDefinitionInputData&gt;**](IndexesIndexDefinitionInputData.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1_indexdef_input_data_index_definition_id_get

> <Array<IndexesIndexDefinitionSnapshotEntry>> v1_indexdef_input_data_index_definition_id_get(index_definition_id, opts)

Returns data inputs for certain index definition and time

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: APIKey
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'

  # Configure API key authorization: JWT
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = OpenapiClient::IndexesApi.new
index_definition_id = 'index_definition_id_example' # String | 
opts = {
  time: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  enabled_only: true, # Boolean | 
  pending_only: true, # Boolean | 
  filter_asset_id: 'filter_asset_id_example', # String | 
  with_status_info: true # Boolean | 
}

begin
  # Returns data inputs for certain index definition and time
  result = api_instance.v1_indexdef_input_data_index_definition_id_get(index_definition_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling IndexesApi->v1_indexdef_input_data_index_definition_id_get: #{e}"
end
```

#### Using the v1_indexdef_input_data_index_definition_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<IndexesIndexDefinitionSnapshotEntry>>, Integer, Hash)> v1_indexdef_input_data_index_definition_id_get_with_http_info(index_definition_id, opts)

```ruby
begin
  # Returns data inputs for certain index definition and time
  data, status_code, headers = api_instance.v1_indexdef_input_data_index_definition_id_get_with_http_info(index_definition_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<IndexesIndexDefinitionSnapshotEntry>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling IndexesApi->v1_indexdef_input_data_index_definition_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **index_definition_id** | **String** |  |  |
| **time** | **Time** |  | [optional] |
| **enabled_only** | **Boolean** |  | [optional][default to false] |
| **pending_only** | **Boolean** |  | [optional][default to false] |
| **filter_asset_id** | **String** |  | [optional] |
| **with_status_info** | **Boolean** |  | [optional][default to false] |

### Return type

[**Array&lt;IndexesIndexDefinitionSnapshotEntry&gt;**](IndexesIndexDefinitionSnapshotEntry.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1_indexdef_multiasset_get

> <Array<IndexesIndexMultiAssetWeight>> v1_indexdef_multiasset_get

Get all multi-asset weights

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: APIKey
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'

  # Configure API key authorization: JWT
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = OpenapiClient::IndexesApi.new

begin
  # Get all multi-asset weights
  result = api_instance.v1_indexdef_multiasset_get
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling IndexesApi->v1_indexdef_multiasset_get: #{e}"
end
```

#### Using the v1_indexdef_multiasset_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<IndexesIndexMultiAssetWeight>>, Integer, Hash)> v1_indexdef_multiasset_get_with_http_info

```ruby
begin
  # Get all multi-asset weights
  data, status_code, headers = api_instance.v1_indexdef_multiasset_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<IndexesIndexMultiAssetWeight>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling IndexesApi->v1_indexdef_multiasset_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;IndexesIndexMultiAssetWeight&gt;**](IndexesIndexMultiAssetWeight.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1_indexdef_multiasset_index_id_get

> <Array<IndexesIndexMultiAssetWeight>> v1_indexdef_multiasset_index_id_get(index_id)

Get multi-asset weights for specific index

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: APIKey
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'

  # Configure API key authorization: JWT
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = OpenapiClient::IndexesApi.new
index_id = 'index_id_example' # String | 

begin
  # Get multi-asset weights for specific index
  result = api_instance.v1_indexdef_multiasset_index_id_get(index_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling IndexesApi->v1_indexdef_multiasset_index_id_get: #{e}"
end
```

#### Using the v1_indexdef_multiasset_index_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<IndexesIndexMultiAssetWeight>>, Integer, Hash)> v1_indexdef_multiasset_index_id_get_with_http_info(index_id)

```ruby
begin
  # Get multi-asset weights for specific index
  data, status_code, headers = api_instance.v1_indexdef_multiasset_index_id_get_with_http_info(index_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<IndexesIndexMultiAssetWeight>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling IndexesApi->v1_indexdef_multiasset_index_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **index_id** | **String** |  |  |

### Return type

[**Array&lt;IndexesIndexMultiAssetWeight&gt;**](IndexesIndexMultiAssetWeight.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1_indexes_get

> <Array<IndexesIndexIdentifier>> v1_indexes_get

List indexes

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: APIKey
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'

  # Configure API key authorization: JWT
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = OpenapiClient::IndexesApi.new

begin
  # List indexes
  result = api_instance.v1_indexes_get
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling IndexesApi->v1_indexes_get: #{e}"
end
```

#### Using the v1_indexes_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<IndexesIndexIdentifier>>, Integer, Hash)> v1_indexes_get_with_http_info

```ruby
begin
  # List indexes
  data, status_code, headers = api_instance.v1_indexes_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<IndexesIndexIdentifier>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling IndexesApi->v1_indexes_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;IndexesIndexIdentifier&gt;**](IndexesIndexIdentifier.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1_indexes_index_definition_id_current_snapshot_get

> <Array<IndexesIndexDefinitionSnapshotEntry>> v1_indexes_index_definition_id_current_snapshot_get(index_definition_id)

Current Index Values for index definition

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: APIKey
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'

  # Configure API key authorization: JWT
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = OpenapiClient::IndexesApi.new
index_definition_id = 'index_definition_id_example' # String | 

begin
  # Current Index Values for index definition
  result = api_instance.v1_indexes_index_definition_id_current_snapshot_get(index_definition_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling IndexesApi->v1_indexes_index_definition_id_current_snapshot_get: #{e}"
end
```

#### Using the v1_indexes_index_definition_id_current_snapshot_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<IndexesIndexDefinitionSnapshotEntry>>, Integer, Hash)> v1_indexes_index_definition_id_current_snapshot_get_with_http_info(index_definition_id)

```ruby
begin
  # Current Index Values for index definition
  data, status_code, headers = api_instance.v1_indexes_index_definition_id_current_snapshot_get_with_http_info(index_definition_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<IndexesIndexDefinitionSnapshotEntry>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling IndexesApi->v1_indexes_index_definition_id_current_snapshot_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **index_definition_id** | **String** |  |  |

### Return type

[**Array&lt;IndexesIndexDefinitionSnapshotEntry&gt;**](IndexesIndexDefinitionSnapshotEntry.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1_indexes_index_definition_id_history_snapshot_get

> <Array<IndexesIndexDefinitionSnapshotEntry>> v1_indexes_index_definition_id_history_snapshot_get(index_definition_id, opts)

Historical Index Values for index definition

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: APIKey
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'

  # Configure API key authorization: JWT
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = OpenapiClient::IndexesApi.new
index_definition_id = 'index_definition_id_example' # String | 
opts = {
  time: Time.parse('2013-10-20T19:20:30+01:00') # Time | 
}

begin
  # Historical Index Values for index definition
  result = api_instance.v1_indexes_index_definition_id_history_snapshot_get(index_definition_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling IndexesApi->v1_indexes_index_definition_id_history_snapshot_get: #{e}"
end
```

#### Using the v1_indexes_index_definition_id_history_snapshot_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<IndexesIndexDefinitionSnapshotEntry>>, Integer, Hash)> v1_indexes_index_definition_id_history_snapshot_get_with_http_info(index_definition_id, opts)

```ruby
begin
  # Historical Index Values for index definition
  data, status_code, headers = api_instance.v1_indexes_index_definition_id_history_snapshot_get_with_http_info(index_definition_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<IndexesIndexDefinitionSnapshotEntry>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling IndexesApi->v1_indexes_index_definition_id_history_snapshot_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **index_definition_id** | **String** |  |  |
| **time** | **Time** |  | [optional] |

### Return type

[**Array&lt;IndexesIndexDefinitionSnapshotEntry&gt;**](IndexesIndexDefinitionSnapshotEntry.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1_indexes_index_id_current_get

> <IndexesIndexValue> v1_indexes_index_id_current_get(index_id)

Current Index Value

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: APIKey
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'

  # Configure API key authorization: JWT
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = OpenapiClient::IndexesApi.new
index_id = 'index_id_example' # String | 

begin
  # Current Index Value
  result = api_instance.v1_indexes_index_id_current_get(index_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling IndexesApi->v1_indexes_index_id_current_get: #{e}"
end
```

#### Using the v1_indexes_index_id_current_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IndexesIndexValue>, Integer, Hash)> v1_indexes_index_id_current_get_with_http_info(index_id)

```ruby
begin
  # Current Index Value
  data, status_code, headers = api_instance.v1_indexes_index_id_current_get_with_http_info(index_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IndexesIndexValue>
rescue OpenapiClient::ApiError => e
  puts "Error when calling IndexesApi->v1_indexes_index_id_current_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **index_id** | **String** |  |  |

### Return type

[**IndexesIndexValue**](IndexesIndexValue.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1_indexes_index_id_history_get

> <Array<IndexesIndexValue>> v1_indexes_index_id_history_get(index_id, opts)

Historical Index Value w/Composition

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: APIKey
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'

  # Configure API key authorization: JWT
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = OpenapiClient::IndexesApi.new
index_id = 'index_id_example' # String | 
opts = {
  time_start: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  time_end: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  limit: 56 # Integer | 
}

begin
  # Historical Index Value w/Composition
  result = api_instance.v1_indexes_index_id_history_get(index_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling IndexesApi->v1_indexes_index_id_history_get: #{e}"
end
```

#### Using the v1_indexes_index_id_history_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<IndexesIndexValue>>, Integer, Hash)> v1_indexes_index_id_history_get_with_http_info(index_id, opts)

```ruby
begin
  # Historical Index Value w/Composition
  data, status_code, headers = api_instance.v1_indexes_index_id_history_get_with_http_info(index_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<IndexesIndexValue>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling IndexesApi->v1_indexes_index_id_history_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **index_id** | **String** |  |  |
| **time_start** | **Time** |  | [optional] |
| **time_end** | **Time** |  | [optional] |
| **limit** | **Integer** |  | [optional][default to 100] |

### Return type

[**Array&lt;IndexesIndexValue&gt;**](IndexesIndexValue.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1_indexes_index_id_timeseries_get

> <Array<IndexesIndexTimeseriesItem>> v1_indexes_index_id_timeseries_get(index_id, period_id, time_start, time_end, opts)

Timeseries Index Value

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: APIKey
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'

  # Configure API key authorization: JWT
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = OpenapiClient::IndexesApi.new
index_id = 'index_id_example' # String | 
period_id = 'period_id_example' # String | Identifier of requested timeseries period (e.g. `5SEC` or `1DAY`)
time_start = 'time_start_example' # String | Timeseries starting time in ISO 8601
time_end = 'time_end_example' # String | Timeseries ending time in ISO 8601
opts = {
  limit: 56 # Integer | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
}

begin
  # Timeseries Index Value
  result = api_instance.v1_indexes_index_id_timeseries_get(index_id, period_id, time_start, time_end, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling IndexesApi->v1_indexes_index_id_timeseries_get: #{e}"
end
```

#### Using the v1_indexes_index_id_timeseries_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<IndexesIndexTimeseriesItem>>, Integer, Hash)> v1_indexes_index_id_timeseries_get_with_http_info(index_id, period_id, time_start, time_end, opts)

```ruby
begin
  # Timeseries Index Value
  data, status_code, headers = api_instance.v1_indexes_index_id_timeseries_get_with_http_info(index_id, period_id, time_start, time_end, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<IndexesIndexTimeseriesItem>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling IndexesApi->v1_indexes_index_id_timeseries_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **index_id** | **String** |  |  |
| **period_id** | **String** | Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;1DAY&#x60;) |  |
| **time_start** | **String** | Timeseries starting time in ISO 8601 |  |
| **time_end** | **String** | Timeseries ending time in ISO 8601 |  |
| **limit** | **Integer** | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional][default to 100] |

### Return type

[**Array&lt;IndexesIndexTimeseriesItem&gt;**](IndexesIndexTimeseriesItem.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

