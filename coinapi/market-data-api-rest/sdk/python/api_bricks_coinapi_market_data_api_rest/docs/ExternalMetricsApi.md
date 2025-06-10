# api_bricks_coinapi_market_data_api_rest.ExternalMetricsApi

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_externalmetrics_asset_history_get**](ExternalMetricsApi.md#v1_externalmetrics_asset_history_get) | **GET** /v1/externalmetrics/asset/history | Historical metrics for the asset from external sources
[**v1_externalmetrics_asset_listing_get**](ExternalMetricsApi.md#v1_externalmetrics_asset_listing_get) | **GET** /v1/externalmetrics/asset/listing | Listing of metrics available for specific asset
[**v1_externalmetrics_assets_get**](ExternalMetricsApi.md#v1_externalmetrics_assets_get) | **GET** /v1/externalmetrics/assets | Listing of all supported external assets
[**v1_externalmetrics_chain_history_get**](ExternalMetricsApi.md#v1_externalmetrics_chain_history_get) | **GET** /v1/externalmetrics/chain/history | Historical metrics for the chain from external sources
[**v1_externalmetrics_chain_listing_get**](ExternalMetricsApi.md#v1_externalmetrics_chain_listing_get) | **GET** /v1/externalmetrics/chain/listing | Listing of metrics available for specific chain
[**v1_externalmetrics_chains_get**](ExternalMetricsApi.md#v1_externalmetrics_chains_get) | **GET** /v1/externalmetrics/chains | Listing of all supported external chains
[**v1_externalmetrics_exchange_history_get**](ExternalMetricsApi.md#v1_externalmetrics_exchange_history_get) | **GET** /v1/externalmetrics/exchange/history | Historical metrics for the exchange from both external and internal sources
[**v1_externalmetrics_exchange_listing_get**](ExternalMetricsApi.md#v1_externalmetrics_exchange_listing_get) | **GET** /v1/externalmetrics/exchange/listing | Listing of metrics available for specific exchange (both external and generic)
[**v1_externalmetrics_exchanges_get**](ExternalMetricsApi.md#v1_externalmetrics_exchanges_get) | **GET** /v1/externalmetrics/exchanges | Listing of all supported external exchanges
[**v1_externalmetrics_listing_get**](ExternalMetricsApi.md#v1_externalmetrics_listing_get) | **GET** /v1/externalmetrics/listing | Listing of all supported metrics (both external and generic)


# **v1_externalmetrics_asset_history_get**
> List[object] v1_externalmetrics_asset_history_get(metric_id, asset_id, time_start=time_start, time_end=time_end, time_format=time_format, period_id=period_id, limit=limit)

Historical metrics for the asset from external sources

Get asset metrics history from external data providers. Data is typically aggregated daily.

### Example

* Api Key Authentication (ApiKey):

```python
import api_bricks_coinapi_market_data_api_rest
from api_bricks_coinapi_market_data_api_rest.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://rest.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = api_bricks_coinapi_market_data_api_rest.Configuration(
    host = "https://rest.coinapi.io"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKey
configuration.api_key['ApiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKey'] = 'Bearer'

# Enter a context with an instance of the API client
with api_bricks_coinapi_market_data_api_rest.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = api_bricks_coinapi_market_data_api_rest.ExternalMetricsApi(api_client)
    metric_id = 'metric_id_example' # str | Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD` - internal metric key)
    asset_id = 'asset_id_example' # str | Asset identifier (e.g., `USDC`, `USDT` - from supported assets list)
    time_start = '2013-10-20T19:20:30+01:00' # datetime | Starting time in ISO 8601 (optional)
    time_end = '2013-10-20T19:20:30+01:00' # datetime | Ending time in ISO 8601 (optional)
    time_format = 'time_format_example' # str | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) (optional)
    period_id = 'period_id_example' # str | Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN` (optional)
    limit = 100 # int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional) (default to 100)

    try:
        # Historical metrics for the asset from external sources
        api_response = api_instance.v1_externalmetrics_asset_history_get(metric_id, asset_id, time_start=time_start, time_end=time_end, time_format=time_format, period_id=period_id, limit=limit)
        print("The response of ExternalMetricsApi->v1_externalmetrics_asset_history_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ExternalMetricsApi->v1_externalmetrics_asset_history_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metric_id** | **str**| Metric identifier (e.g., &#x60;TVL&#x60;, &#x60;STABLES_BRIDGED_USD&#x60; - internal metric key) | 
 **asset_id** | **str**| Asset identifier (e.g., &#x60;USDC&#x60;, &#x60;USDT&#x60; - from supported assets list) | 
 **time_start** | **datetime**| Starting time in ISO 8601 | [optional] 
 **time_end** | **datetime**| Ending time in ISO 8601 | [optional] 
 **time_format** | **str**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] 
 **period_id** | **str**| Identifier of requested timeseries period (e.g. &#x60;1MIN&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1MIN&#x60; | [optional] 
 **limit** | **int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

**List[object]**

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | successful operation |  -  |
**400** | Invalid input, e.g., missing required parameters, invalid asset_id. |  -  |
**500** | Internal server error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_externalmetrics_asset_listing_get**
> List[V1MetricInfo] v1_externalmetrics_asset_listing_get(asset_id)

Listing of metrics available for specific asset

Get all metrics that are actually available for the specified asset from external providers.

### Example

* Api Key Authentication (ApiKey):

```python
import api_bricks_coinapi_market_data_api_rest
from api_bricks_coinapi_market_data_api_rest.models.v1_metric_info import V1MetricInfo
from api_bricks_coinapi_market_data_api_rest.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://rest.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = api_bricks_coinapi_market_data_api_rest.Configuration(
    host = "https://rest.coinapi.io"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKey
configuration.api_key['ApiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKey'] = 'Bearer'

# Enter a context with an instance of the API client
with api_bricks_coinapi_market_data_api_rest.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = api_bricks_coinapi_market_data_api_rest.ExternalMetricsApi(api_client)
    asset_id = 'asset_id_example' # str | Asset identifier (e.g., USDC, USDT)

    try:
        # Listing of metrics available for specific asset
        api_response = api_instance.v1_externalmetrics_asset_listing_get(asset_id)
        print("The response of ExternalMetricsApi->v1_externalmetrics_asset_listing_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ExternalMetricsApi->v1_externalmetrics_asset_listing_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asset_id** | **str**| Asset identifier (e.g., USDC, USDT) | 

### Return type

[**List[V1MetricInfo]**](V1MetricInfo.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_externalmetrics_assets_get**
> List[V1ExternalAsset] v1_externalmetrics_assets_get()

Listing of all supported external assets

Get all assets (primarily stablecoins) supported by external data providers.

### Example

* Api Key Authentication (ApiKey):

```python
import api_bricks_coinapi_market_data_api_rest
from api_bricks_coinapi_market_data_api_rest.models.v1_external_asset import V1ExternalAsset
from api_bricks_coinapi_market_data_api_rest.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://rest.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = api_bricks_coinapi_market_data_api_rest.Configuration(
    host = "https://rest.coinapi.io"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKey
configuration.api_key['ApiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKey'] = 'Bearer'

# Enter a context with an instance of the API client
with api_bricks_coinapi_market_data_api_rest.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = api_bricks_coinapi_market_data_api_rest.ExternalMetricsApi(api_client)

    try:
        # Listing of all supported external assets
        api_response = api_instance.v1_externalmetrics_assets_get()
        print("The response of ExternalMetricsApi->v1_externalmetrics_assets_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ExternalMetricsApi->v1_externalmetrics_assets_get: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**List[V1ExternalAsset]**](V1ExternalAsset.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_externalmetrics_chain_history_get**
> List[object] v1_externalmetrics_chain_history_get(metric_id, chain_id, time_start=time_start, time_end=time_end, time_format=time_format, period_id=period_id, limit=limit)

Historical metrics for the chain from external sources

Get chain metrics history from external data providers. Data is typically aggregated daily.

### Example

* Api Key Authentication (ApiKey):

```python
import api_bricks_coinapi_market_data_api_rest
from api_bricks_coinapi_market_data_api_rest.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://rest.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = api_bricks_coinapi_market_data_api_rest.Configuration(
    host = "https://rest.coinapi.io"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKey
configuration.api_key['ApiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKey'] = 'Bearer'

# Enter a context with an instance of the API client
with api_bricks_coinapi_market_data_api_rest.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = api_bricks_coinapi_market_data_api_rest.ExternalMetricsApi(api_client)
    metric_id = 'metric_id_example' # str | Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD` - internal metric key)
    chain_id = 'chain_id_example' # str | Chain identifier (e.g., `Ethereum`, `Arbitrum` - from supported chains list)
    time_start = '2013-10-20T19:20:30+01:00' # datetime | Starting time in ISO 8601 (optional)
    time_end = '2013-10-20T19:20:30+01:00' # datetime | Ending time in ISO 8601 (optional)
    time_format = 'time_format_example' # str | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) (optional)
    period_id = 'period_id_example' # str | Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN` (optional)
    limit = 100 # int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional) (default to 100)

    try:
        # Historical metrics for the chain from external sources
        api_response = api_instance.v1_externalmetrics_chain_history_get(metric_id, chain_id, time_start=time_start, time_end=time_end, time_format=time_format, period_id=period_id, limit=limit)
        print("The response of ExternalMetricsApi->v1_externalmetrics_chain_history_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ExternalMetricsApi->v1_externalmetrics_chain_history_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metric_id** | **str**| Metric identifier (e.g., &#x60;TVL&#x60;, &#x60;STABLES_BRIDGED_USD&#x60; - internal metric key) | 
 **chain_id** | **str**| Chain identifier (e.g., &#x60;Ethereum&#x60;, &#x60;Arbitrum&#x60; - from supported chains list) | 
 **time_start** | **datetime**| Starting time in ISO 8601 | [optional] 
 **time_end** | **datetime**| Ending time in ISO 8601 | [optional] 
 **time_format** | **str**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] 
 **period_id** | **str**| Identifier of requested timeseries period (e.g. &#x60;1MIN&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1MIN&#x60; | [optional] 
 **limit** | **int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

**List[object]**

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | successful operation |  -  |
**400** | Invalid input, e.g., missing required parameters, invalid chain_id. |  -  |
**500** | Internal server error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_externalmetrics_chain_listing_get**
> List[V1MetricInfo] v1_externalmetrics_chain_listing_get(chain_id)

Listing of metrics available for specific chain

Get all metrics that are actually available for the specified blockchain chain from external providers.

### Example

* Api Key Authentication (ApiKey):

```python
import api_bricks_coinapi_market_data_api_rest
from api_bricks_coinapi_market_data_api_rest.models.v1_metric_info import V1MetricInfo
from api_bricks_coinapi_market_data_api_rest.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://rest.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = api_bricks_coinapi_market_data_api_rest.Configuration(
    host = "https://rest.coinapi.io"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKey
configuration.api_key['ApiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKey'] = 'Bearer'

# Enter a context with an instance of the API client
with api_bricks_coinapi_market_data_api_rest.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = api_bricks_coinapi_market_data_api_rest.ExternalMetricsApi(api_client)
    chain_id = 'chain_id_example' # str | Chain identifier (e.g., ETHEREUM, ARBITRUM)

    try:
        # Listing of metrics available for specific chain
        api_response = api_instance.v1_externalmetrics_chain_listing_get(chain_id)
        print("The response of ExternalMetricsApi->v1_externalmetrics_chain_listing_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ExternalMetricsApi->v1_externalmetrics_chain_listing_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **str**| Chain identifier (e.g., ETHEREUM, ARBITRUM) | 

### Return type

[**List[V1MetricInfo]**](V1MetricInfo.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_externalmetrics_chains_get**
> List[V1Chain] v1_externalmetrics_chains_get()

Listing of all supported external chains

Get all blockchain chains supported by external data providers.

### Example

* Api Key Authentication (ApiKey):

```python
import api_bricks_coinapi_market_data_api_rest
from api_bricks_coinapi_market_data_api_rest.models.v1_chain import V1Chain
from api_bricks_coinapi_market_data_api_rest.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://rest.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = api_bricks_coinapi_market_data_api_rest.Configuration(
    host = "https://rest.coinapi.io"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKey
configuration.api_key['ApiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKey'] = 'Bearer'

# Enter a context with an instance of the API client
with api_bricks_coinapi_market_data_api_rest.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = api_bricks_coinapi_market_data_api_rest.ExternalMetricsApi(api_client)

    try:
        # Listing of all supported external chains
        api_response = api_instance.v1_externalmetrics_chains_get()
        print("The response of ExternalMetricsApi->v1_externalmetrics_chains_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ExternalMetricsApi->v1_externalmetrics_chains_get: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**List[V1Chain]**](V1Chain.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_externalmetrics_exchange_history_get**
> List[object] v1_externalmetrics_exchange_history_get(metric_id, exchange_id, time_start=time_start, time_end=time_end, time_format=time_format, period_id=period_id, limit=limit)

Historical metrics for the exchange from both external and internal sources

Get exchange metrics history from external data providers or internal sources based on metric type.

### Example

* Api Key Authentication (ApiKey):

```python
import api_bricks_coinapi_market_data_api_rest
from api_bricks_coinapi_market_data_api_rest.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://rest.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = api_bricks_coinapi_market_data_api_rest.Configuration(
    host = "https://rest.coinapi.io"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKey
configuration.api_key['ApiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKey'] = 'Bearer'

# Enter a context with an instance of the API client
with api_bricks_coinapi_market_data_api_rest.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = api_bricks_coinapi_market_data_api_rest.ExternalMetricsApi(api_client)
    metric_id = 'metric_id_example' # str | Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD` for external, or generic metric IDs)
    exchange_id = 'exchange_id_example' # str | Exchange identifier (e.g., `BINANCE`, `UNISWAP-V3-ETHEREUM`)
    time_start = '2013-10-20T19:20:30+01:00' # datetime | Starting time in ISO 8601 (optional)
    time_end = '2013-10-20T19:20:30+01:00' # datetime | Ending time in ISO 8601 (optional)
    time_format = 'time_format_example' # str | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) (optional)
    period_id = 'period_id_example' # str | Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN` (optional)
    limit = 100 # int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional) (default to 100)

    try:
        # Historical metrics for the exchange from both external and internal sources
        api_response = api_instance.v1_externalmetrics_exchange_history_get(metric_id, exchange_id, time_start=time_start, time_end=time_end, time_format=time_format, period_id=period_id, limit=limit)
        print("The response of ExternalMetricsApi->v1_externalmetrics_exchange_history_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ExternalMetricsApi->v1_externalmetrics_exchange_history_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metric_id** | **str**| Metric identifier (e.g., &#x60;TVL&#x60;, &#x60;STABLES_BRIDGED_USD&#x60; for external, or generic metric IDs) | 
 **exchange_id** | **str**| Exchange identifier (e.g., &#x60;BINANCE&#x60;, &#x60;UNISWAP-V3-ETHEREUM&#x60;) | 
 **time_start** | **datetime**| Starting time in ISO 8601 | [optional] 
 **time_end** | **datetime**| Ending time in ISO 8601 | [optional] 
 **time_format** | **str**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] 
 **period_id** | **str**| Identifier of requested timeseries period (e.g. &#x60;1MIN&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1MIN&#x60; | [optional] 
 **limit** | **int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

**List[object]**

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | successful operation |  -  |
**400** | Invalid input, e.g., missing required parameters, invalid exchange_id mapping. |  -  |
**500** | Internal server error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_externalmetrics_exchange_listing_get**
> List[V1MetricInfo] v1_externalmetrics_exchange_listing_get(exchange_id)

Listing of metrics available for specific exchange (both external and generic)

Get all metrics that are actually available for the specified exchange from both external providers and internal sources.

### Example

* Api Key Authentication (ApiKey):

```python
import api_bricks_coinapi_market_data_api_rest
from api_bricks_coinapi_market_data_api_rest.models.v1_metric_info import V1MetricInfo
from api_bricks_coinapi_market_data_api_rest.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://rest.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = api_bricks_coinapi_market_data_api_rest.Configuration(
    host = "https://rest.coinapi.io"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKey
configuration.api_key['ApiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKey'] = 'Bearer'

# Enter a context with an instance of the API client
with api_bricks_coinapi_market_data_api_rest.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = api_bricks_coinapi_market_data_api_rest.ExternalMetricsApi(api_client)
    exchange_id = 'exchange_id_example' # str | Exchange identifier (e.g., BINANCE, UNISWAP-V3-ETHEREUM)

    try:
        # Listing of metrics available for specific exchange (both external and generic)
        api_response = api_instance.v1_externalmetrics_exchange_listing_get(exchange_id)
        print("The response of ExternalMetricsApi->v1_externalmetrics_exchange_listing_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ExternalMetricsApi->v1_externalmetrics_exchange_listing_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **str**| Exchange identifier (e.g., BINANCE, UNISWAP-V3-ETHEREUM) | 

### Return type

[**List[V1MetricInfo]**](V1MetricInfo.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_externalmetrics_exchanges_get**
> List[V1ExternalExchange] v1_externalmetrics_exchanges_get()

Listing of all supported external exchanges

Get all exchanges that have mapping to external data providers for metrics that actually have sources.
Only returns exchanges that are properly mapped to external protocols for metrics with defined sources.

### Example

* Api Key Authentication (ApiKey):

```python
import api_bricks_coinapi_market_data_api_rest
from api_bricks_coinapi_market_data_api_rest.models.v1_external_exchange import V1ExternalExchange
from api_bricks_coinapi_market_data_api_rest.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://rest.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = api_bricks_coinapi_market_data_api_rest.Configuration(
    host = "https://rest.coinapi.io"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKey
configuration.api_key['ApiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKey'] = 'Bearer'

# Enter a context with an instance of the API client
with api_bricks_coinapi_market_data_api_rest.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = api_bricks_coinapi_market_data_api_rest.ExternalMetricsApi(api_client)

    try:
        # Listing of all supported external exchanges
        api_response = api_instance.v1_externalmetrics_exchanges_get()
        print("The response of ExternalMetricsApi->v1_externalmetrics_exchanges_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ExternalMetricsApi->v1_externalmetrics_exchanges_get: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**List[V1ExternalExchange]**](V1ExternalExchange.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_externalmetrics_listing_get**
> List[V1MetricInfo] v1_externalmetrics_listing_get()

Listing of all supported metrics (both external and generic)

Get all metrics available from external data providers and internal generic metrics.
External metrics have detailed descriptions, while generic metrics are marked as such.

### Example

* Api Key Authentication (ApiKey):

```python
import api_bricks_coinapi_market_data_api_rest
from api_bricks_coinapi_market_data_api_rest.models.v1_metric_info import V1MetricInfo
from api_bricks_coinapi_market_data_api_rest.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://rest.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = api_bricks_coinapi_market_data_api_rest.Configuration(
    host = "https://rest.coinapi.io"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKey
configuration.api_key['ApiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKey'] = 'Bearer'

# Enter a context with an instance of the API client
with api_bricks_coinapi_market_data_api_rest.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = api_bricks_coinapi_market_data_api_rest.ExternalMetricsApi(api_client)

    try:
        # Listing of all supported metrics (both external and generic)
        api_response = api_instance.v1_externalmetrics_listing_get()
        print("The response of ExternalMetricsApi->v1_externalmetrics_listing_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ExternalMetricsApi->v1_externalmetrics_listing_get: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**List[V1MetricInfo]**](V1MetricInfo.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

