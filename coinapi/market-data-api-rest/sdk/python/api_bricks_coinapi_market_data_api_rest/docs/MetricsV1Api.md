# api_bricks_coinapi_market_data_api_rest.MetricsV1Api

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
> List[V1GeneralData] v1_metrics_asset_current_get(metric_id=metric_id, asset_id=asset_id, asset_id_external=asset_id_external, exchange_id=exchange_id)

Current metrics for given asset

Get current asset metrics.

### Example

* Api Key Authentication (APIKey):
* Bearer (JWT) Authentication (JWT):

```python
import api_bricks_coinapi_market_data_api_rest
from api_bricks_coinapi_market_data_api_rest.models.v1_general_data import V1GeneralData
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

# Configure API key authorization: APIKey
configuration.api_key['APIKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['APIKey'] = 'Bearer'

# Configure Bearer authorization (JWT): JWT
configuration = api_bricks_coinapi_market_data_api_rest.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with api_bricks_coinapi_market_data_api_rest.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = api_bricks_coinapi_market_data_api_rest.MetricsV1Api(api_client)
    metric_id = 'metric_id_example' # str | Metric identifier (from the Metrics -> Listing) (optional)
    asset_id = 'asset_id_example' # str | Asset identifier (from the Metadata -> Assets) (optional)
    asset_id_external = 'asset_id_external_example' # str | Exchange asset identifier (optional)
    exchange_id = 'exchange_id_example' # str | Exchange identifier (from the Metadata -> Exchanges) (optional)

    try:
        # Current metrics for given asset
        api_response = api_instance.v1_metrics_asset_current_get(metric_id=metric_id, asset_id=asset_id, asset_id_external=asset_id_external, exchange_id=exchange_id)
        print("The response of MetricsV1Api->v1_metrics_asset_current_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MetricsV1Api->v1_metrics_asset_current_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metric_id** | **str**| Metric identifier (from the Metrics -&gt; Listing) | [optional] 
 **asset_id** | **str**| Asset identifier (from the Metadata -&gt; Assets) | [optional] 
 **asset_id_external** | **str**| Exchange asset identifier | [optional] 
 **exchange_id** | **str**| Exchange identifier (from the Metadata -&gt; Exchanges) | [optional] 

### Return type

[**List[V1GeneralData]**](V1GeneralData.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_metrics_asset_history_get**
> List[V1MetricData] v1_metrics_asset_history_get(metric_id, exchange_id, asset_id=asset_id, asset_id_external=asset_id_external, time_start=time_start, time_end=time_end, time_format=time_format, period_id=period_id, limit=limit)

Historical metrics for asset

Get asset metrics history.

### Example

* Api Key Authentication (APIKey):
* Bearer (JWT) Authentication (JWT):

```python
import api_bricks_coinapi_market_data_api_rest
from api_bricks_coinapi_market_data_api_rest.models.v1_metric_data import V1MetricData
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

# Configure API key authorization: APIKey
configuration.api_key['APIKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['APIKey'] = 'Bearer'

# Configure Bearer authorization (JWT): JWT
configuration = api_bricks_coinapi_market_data_api_rest.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with api_bricks_coinapi_market_data_api_rest.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = api_bricks_coinapi_market_data_api_rest.MetricsV1Api(api_client)
    metric_id = 'metric_id_example' # str | Metric identifier (from the Metrics -> Listing)
    exchange_id = 'exchange_id_example' # str | Exchange identifier (from the Metadata -> Exchanges)
    asset_id = 'asset_id_example' # str | Asset identifier (from the Metadata -> Assets) (optional)
    asset_id_external = 'asset_id_external_example' # str | Exchange asset identifier (optional)
    time_start = '2013-10-20T19:20:30+01:00' # datetime | Starting time in ISO 8601 (optional)
    time_end = '2013-10-20T19:20:30+01:00' # datetime | Ending time in ISO 8601 (optional)
    time_format = 'time_format_example' # str | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) (optional)
    period_id = 'period_id_example' # str | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`), default value is `1SEC` (optional)
    limit = 100 # int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional) (default to 100)

    try:
        # Historical metrics for asset
        api_response = api_instance.v1_metrics_asset_history_get(metric_id, exchange_id, asset_id=asset_id, asset_id_external=asset_id_external, time_start=time_start, time_end=time_end, time_format=time_format, period_id=period_id, limit=limit)
        print("The response of MetricsV1Api->v1_metrics_asset_history_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MetricsV1Api->v1_metrics_asset_history_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metric_id** | **str**| Metric identifier (from the Metrics -&gt; Listing) | 
 **exchange_id** | **str**| Exchange identifier (from the Metadata -&gt; Exchanges) | 
 **asset_id** | **str**| Asset identifier (from the Metadata -&gt; Assets) | [optional] 
 **asset_id_external** | **str**| Exchange asset identifier | [optional] 
 **time_start** | **datetime**| Starting time in ISO 8601 | [optional] 
 **time_end** | **datetime**| Ending time in ISO 8601 | [optional] 
 **time_format** | **str**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] 
 **period_id** | **str**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1SEC&#x60; | [optional] 
 **limit** | **int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**List[V1MetricData]**](V1MetricData.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_metrics_asset_listing_get**
> List[V1ListingItem] v1_metrics_asset_listing_get(metric_id=metric_id, exchange_id=exchange_id, chain_id=chain_id, network_id=network_id, asset_id=asset_id, asset_id_external=asset_id_external)

Listing of all supported metrics for asset

Get data metrics for asset.

### Example

* Api Key Authentication (APIKey):
* Bearer (JWT) Authentication (JWT):

```python
import api_bricks_coinapi_market_data_api_rest
from api_bricks_coinapi_market_data_api_rest.models.v1_listing_item import V1ListingItem
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

# Configure API key authorization: APIKey
configuration.api_key['APIKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['APIKey'] = 'Bearer'

# Configure Bearer authorization (JWT): JWT
configuration = api_bricks_coinapi_market_data_api_rest.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with api_bricks_coinapi_market_data_api_rest.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = api_bricks_coinapi_market_data_api_rest.MetricsV1Api(api_client)
    metric_id = 'metric_id_example' # str | Metric identifier (from the Metrics -> Listing) (optional)
    exchange_id = 'exchange_id_example' # str | Exchange identifier (from the Metadata -> Exchanges) (optional)
    chain_id = 'chain_id_example' # str | Chain identifier (optional)
    network_id = 'network_id_example' # str | Network identifier (optional)
    asset_id = 'asset_id_example' # str | Asset identifier (from the Metadata -> Assets) (optional)
    asset_id_external = 'asset_id_external_example' # str | The asset external identifier (optional)

    try:
        # Listing of all supported metrics for asset
        api_response = api_instance.v1_metrics_asset_listing_get(metric_id=metric_id, exchange_id=exchange_id, chain_id=chain_id, network_id=network_id, asset_id=asset_id, asset_id_external=asset_id_external)
        print("The response of MetricsV1Api->v1_metrics_asset_listing_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MetricsV1Api->v1_metrics_asset_listing_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metric_id** | **str**| Metric identifier (from the Metrics -&gt; Listing) | [optional] 
 **exchange_id** | **str**| Exchange identifier (from the Metadata -&gt; Exchanges) | [optional] 
 **chain_id** | **str**| Chain identifier | [optional] 
 **network_id** | **str**| Network identifier | [optional] 
 **asset_id** | **str**| Asset identifier (from the Metadata -&gt; Assets) | [optional] 
 **asset_id_external** | **str**| The asset external identifier | [optional] 

### Return type

[**List[V1ListingItem]**](V1ListingItem.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_metrics_exchange_current_get**
> List[V1GeneralData] v1_metrics_exchange_current_get(exchange_id, metric_id=metric_id)

Current metrics for given exchange

Get current exchange metrics values.

### Example

* Api Key Authentication (APIKey):
* Bearer (JWT) Authentication (JWT):

```python
import api_bricks_coinapi_market_data_api_rest
from api_bricks_coinapi_market_data_api_rest.models.v1_general_data import V1GeneralData
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

# Configure API key authorization: APIKey
configuration.api_key['APIKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['APIKey'] = 'Bearer'

# Configure Bearer authorization (JWT): JWT
configuration = api_bricks_coinapi_market_data_api_rest.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with api_bricks_coinapi_market_data_api_rest.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = api_bricks_coinapi_market_data_api_rest.MetricsV1Api(api_client)
    exchange_id = 'exchange_id_example' # str | The exchange identifier (from the Metadata -> Exchanges)
    metric_id = 'metric_id_example' # str | The metric identifier (from the Metrics -> Listing) (optional)

    try:
        # Current metrics for given exchange
        api_response = api_instance.v1_metrics_exchange_current_get(exchange_id, metric_id=metric_id)
        print("The response of MetricsV1Api->v1_metrics_exchange_current_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MetricsV1Api->v1_metrics_exchange_current_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **str**| The exchange identifier (from the Metadata -&gt; Exchanges) | 
 **metric_id** | **str**| The metric identifier (from the Metrics -&gt; Listing) | [optional] 

### Return type

[**List[V1GeneralData]**](V1GeneralData.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_metrics_exchange_history_get**
> List[V1MetricData] v1_metrics_exchange_history_get(metric_id, exchange_id, time_start=time_start, time_end=time_end, time_format=time_format, period_id=period_id, limit=limit)

Historical metrics for the exchange

Get exchange metrics history.

### Example

* Api Key Authentication (APIKey):
* Bearer (JWT) Authentication (JWT):

```python
import api_bricks_coinapi_market_data_api_rest
from api_bricks_coinapi_market_data_api_rest.models.v1_metric_data import V1MetricData
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

# Configure API key authorization: APIKey
configuration.api_key['APIKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['APIKey'] = 'Bearer'

# Configure Bearer authorization (JWT): JWT
configuration = api_bricks_coinapi_market_data_api_rest.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with api_bricks_coinapi_market_data_api_rest.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = api_bricks_coinapi_market_data_api_rest.MetricsV1Api(api_client)
    metric_id = 'metric_id_example' # str | Metric identifier (from the Metrics -> Listing)
    exchange_id = 'exchange_id_example' # str | Exchange identifier (from the Metadata -> Exchanges)
    time_start = '2013-10-20T19:20:30+01:00' # datetime | Starting time in ISO 8601 (optional)
    time_end = '2013-10-20T19:20:30+01:00' # datetime | Ending time in ISO 8601 (optional)
    time_format = 'time_format_example' # str | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) (optional)
    period_id = 'period_id_example' # str | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`), default value is `1SEC` (optional)
    limit = 100 # int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional) (default to 100)

    try:
        # Historical metrics for the exchange
        api_response = api_instance.v1_metrics_exchange_history_get(metric_id, exchange_id, time_start=time_start, time_end=time_end, time_format=time_format, period_id=period_id, limit=limit)
        print("The response of MetricsV1Api->v1_metrics_exchange_history_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MetricsV1Api->v1_metrics_exchange_history_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metric_id** | **str**| Metric identifier (from the Metrics -&gt; Listing) | 
 **exchange_id** | **str**| Exchange identifier (from the Metadata -&gt; Exchanges) | 
 **time_start** | **datetime**| Starting time in ISO 8601 | [optional] 
 **time_end** | **datetime**| Ending time in ISO 8601 | [optional] 
 **time_format** | **str**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] 
 **period_id** | **str**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1SEC&#x60; | [optional] 
 **limit** | **int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**List[V1MetricData]**](V1MetricData.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_metrics_exchange_listing_get**
> List[V1ListingItem] v1_metrics_exchange_listing_get(exchange_id, metric_id=metric_id)

Listing of all supported exchange metrics

Get data metrics for exchange.

### Example

* Api Key Authentication (APIKey):
* Bearer (JWT) Authentication (JWT):

```python
import api_bricks_coinapi_market_data_api_rest
from api_bricks_coinapi_market_data_api_rest.models.v1_listing_item import V1ListingItem
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

# Configure API key authorization: APIKey
configuration.api_key['APIKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['APIKey'] = 'Bearer'

# Configure Bearer authorization (JWT): JWT
configuration = api_bricks_coinapi_market_data_api_rest.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with api_bricks_coinapi_market_data_api_rest.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = api_bricks_coinapi_market_data_api_rest.MetricsV1Api(api_client)
    exchange_id = 'exchange_id_example' # str | The exchange identifier (from the Metadata -> Exchanges)
    metric_id = 'metric_id_example' # str | The metric identifier (from the Metrics -> Listing) (optional)

    try:
        # Listing of all supported exchange metrics
        api_response = api_instance.v1_metrics_exchange_listing_get(exchange_id, metric_id=metric_id)
        print("The response of MetricsV1Api->v1_metrics_exchange_listing_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MetricsV1Api->v1_metrics_exchange_listing_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **str**| The exchange identifier (from the Metadata -&gt; Exchanges) | 
 **metric_id** | **str**| The metric identifier (from the Metrics -&gt; Listing) | [optional] 

### Return type

[**List[V1ListingItem]**](V1ListingItem.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_metrics_listing_get**
> List[V1Metric] v1_metrics_listing_get()

Listing of all supported metrics by CoinAPI

Get all data metrics.

### Example

* Api Key Authentication (APIKey):
* Bearer (JWT) Authentication (JWT):

```python
import api_bricks_coinapi_market_data_api_rest
from api_bricks_coinapi_market_data_api_rest.models.v1_metric import V1Metric
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

# Configure API key authorization: APIKey
configuration.api_key['APIKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['APIKey'] = 'Bearer'

# Configure Bearer authorization (JWT): JWT
configuration = api_bricks_coinapi_market_data_api_rest.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with api_bricks_coinapi_market_data_api_rest.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = api_bricks_coinapi_market_data_api_rest.MetricsV1Api(api_client)

    try:
        # Listing of all supported metrics by CoinAPI
        api_response = api_instance.v1_metrics_listing_get()
        print("The response of MetricsV1Api->v1_metrics_listing_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MetricsV1Api->v1_metrics_listing_get: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**List[V1Metric]**](V1Metric.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_metrics_symbol_current_get**
> List[V1GeneralData] v1_metrics_symbol_current_get(metric_id=metric_id, symbol_id=symbol_id, exchange_id=exchange_id)

Current metrics for given symbol

Get current symbol metrics.

### Example

* Api Key Authentication (APIKey):
* Bearer (JWT) Authentication (JWT):

```python
import api_bricks_coinapi_market_data_api_rest
from api_bricks_coinapi_market_data_api_rest.models.v1_general_data import V1GeneralData
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

# Configure API key authorization: APIKey
configuration.api_key['APIKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['APIKey'] = 'Bearer'

# Configure Bearer authorization (JWT): JWT
configuration = api_bricks_coinapi_market_data_api_rest.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with api_bricks_coinapi_market_data_api_rest.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = api_bricks_coinapi_market_data_api_rest.MetricsV1Api(api_client)
    metric_id = 'metric_id_example' # str | Metric identifier (from the Metrics -> Listing) (optional)
    symbol_id = 'symbol_id_example' # str | Symbol identifier (from the Metadata -> Symbols) (optional)
    exchange_id = 'exchange_id_example' # str | Exchange id (from the Metadata -> Exchanges) (optional)

    try:
        # Current metrics for given symbol
        api_response = api_instance.v1_metrics_symbol_current_get(metric_id=metric_id, symbol_id=symbol_id, exchange_id=exchange_id)
        print("The response of MetricsV1Api->v1_metrics_symbol_current_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MetricsV1Api->v1_metrics_symbol_current_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metric_id** | **str**| Metric identifier (from the Metrics -&gt; Listing) | [optional] 
 **symbol_id** | **str**| Symbol identifier (from the Metadata -&gt; Symbols) | [optional] 
 **exchange_id** | **str**| Exchange id (from the Metadata -&gt; Exchanges) | [optional] 

### Return type

[**List[V1GeneralData]**](V1GeneralData.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_metrics_symbol_history_get**
> List[V1MetricData] v1_metrics_symbol_history_get(metric_id, symbol_id, time_start=time_start, time_end=time_end, time_format=time_format, period_id=period_id, limit=limit)

Historical metrics for symbol

Get symbol metrics history.

### Example

* Api Key Authentication (APIKey):
* Bearer (JWT) Authentication (JWT):

```python
import api_bricks_coinapi_market_data_api_rest
from api_bricks_coinapi_market_data_api_rest.models.v1_metric_data import V1MetricData
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

# Configure API key authorization: APIKey
configuration.api_key['APIKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['APIKey'] = 'Bearer'

# Configure Bearer authorization (JWT): JWT
configuration = api_bricks_coinapi_market_data_api_rest.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with api_bricks_coinapi_market_data_api_rest.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = api_bricks_coinapi_market_data_api_rest.MetricsV1Api(api_client)
    metric_id = 'metric_id_example' # str | Metric identifier (from the Metrics -> Listing)
    symbol_id = 'symbol_id_example' # str | Symbol identifier (from the Metadata -> Symbols)
    time_start = '2013-10-20T19:20:30+01:00' # datetime | Starting time in ISO 8601 (optional)
    time_end = '2013-10-20T19:20:30+01:00' # datetime | Ending time in ISO 8601 (optional)
    time_format = 'time_format_example' # str | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) (optional)
    period_id = 'period_id_example' # str | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`), default value is `1SEC` (optional)
    limit = 100 # int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional) (default to 100)

    try:
        # Historical metrics for symbol
        api_response = api_instance.v1_metrics_symbol_history_get(metric_id, symbol_id, time_start=time_start, time_end=time_end, time_format=time_format, period_id=period_id, limit=limit)
        print("The response of MetricsV1Api->v1_metrics_symbol_history_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MetricsV1Api->v1_metrics_symbol_history_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metric_id** | **str**| Metric identifier (from the Metrics -&gt; Listing) | 
 **symbol_id** | **str**| Symbol identifier (from the Metadata -&gt; Symbols) | 
 **time_start** | **datetime**| Starting time in ISO 8601 | [optional] 
 **time_end** | **datetime**| Ending time in ISO 8601 | [optional] 
 **time_format** | **str**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] 
 **period_id** | **str**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1SEC&#x60; | [optional] 
 **limit** | **int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**List[V1MetricData]**](V1MetricData.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_metrics_symbol_listing_get**
> List[V1ListingItem] v1_metrics_symbol_listing_get(metric_id=metric_id, exchange_id=exchange_id, symbol_id=symbol_id)

Listing of all supported metrics for symbol

Get data metrics for symbol.

### Example

* Api Key Authentication (APIKey):
* Bearer (JWT) Authentication (JWT):

```python
import api_bricks_coinapi_market_data_api_rest
from api_bricks_coinapi_market_data_api_rest.models.v1_listing_item import V1ListingItem
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

# Configure API key authorization: APIKey
configuration.api_key['APIKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['APIKey'] = 'Bearer'

# Configure Bearer authorization (JWT): JWT
configuration = api_bricks_coinapi_market_data_api_rest.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with api_bricks_coinapi_market_data_api_rest.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = api_bricks_coinapi_market_data_api_rest.MetricsV1Api(api_client)
    metric_id = 'metric_id_example' # str | Metric identifier (from the Metrics -> Listing) (optional)
    exchange_id = 'exchange_id_example' # str | Exchange identifier (from the Metadata -> Exchanges) (optional)
    symbol_id = 'symbol_id_example' # str | Symbol identifier (from the Metadata -> Symbols) (optional)

    try:
        # Listing of all supported metrics for symbol
        api_response = api_instance.v1_metrics_symbol_listing_get(metric_id=metric_id, exchange_id=exchange_id, symbol_id=symbol_id)
        print("The response of MetricsV1Api->v1_metrics_symbol_listing_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MetricsV1Api->v1_metrics_symbol_listing_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metric_id** | **str**| Metric identifier (from the Metrics -&gt; Listing) | [optional] 
 **exchange_id** | **str**| Exchange identifier (from the Metadata -&gt; Exchanges) | [optional] 
 **symbol_id** | **str**| Symbol identifier (from the Metadata -&gt; Symbols) | [optional] 

### Return type

[**List[V1ListingItem]**](V1ListingItem.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

