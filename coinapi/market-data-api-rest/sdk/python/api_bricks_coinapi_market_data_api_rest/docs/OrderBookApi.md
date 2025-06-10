# api_bricks_coinapi_market_data_api_rest.OrderBookApi

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_orderbooks_symbol_id_current_get**](OrderBookApi.md#v1_orderbooks_symbol_id_current_get) | **GET** /v1/orderbooks/{symbol_id}/current | Get current order book
[**v1_orderbooks_symbol_id_depth_current_get**](OrderBookApi.md#v1_orderbooks_symbol_id_depth_current_get) | **GET** /v1/orderbooks/{symbol_id}/depth/current | Current depth of the order book
[**v1_orderbooks_symbol_id_history_get**](OrderBookApi.md#v1_orderbooks_symbol_id_history_get) | **GET** /v1/orderbooks/{symbol_id}/history | Historical data
[**v1_orderbooks_symbol_id_latest_get**](OrderBookApi.md#v1_orderbooks_symbol_id_latest_get) | **GET** /v1/orderbooks/{symbol_id}/latest | Latest data


# **v1_orderbooks_symbol_id_current_get**
> V1OrderBookBase v1_orderbooks_symbol_id_current_get(symbol_id, limit_levels=limit_levels)

Get current order book

Retrieves the current order book for the specified symbol.

### Example

* Api Key Authentication (ApiKey):

```python
import api_bricks_coinapi_market_data_api_rest
from api_bricks_coinapi_market_data_api_rest.models.v1_order_book_base import V1OrderBookBase
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
    api_instance = api_bricks_coinapi_market_data_api_rest.OrderBookApi(api_client)
    symbol_id = 'symbol_id_example' # str | The symbol ID (from the Metadata -> Symbols)
    limit_levels = 56 # int | The maximum number of levels to include in the response. (optional)

    try:
        # Get current order book
        api_response = api_instance.v1_orderbooks_symbol_id_current_get(symbol_id, limit_levels=limit_levels)
        print("The response of OrderBookApi->v1_orderbooks_symbol_id_current_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OrderBookApi->v1_orderbooks_symbol_id_current_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol_id** | **str**| The symbol ID (from the Metadata -&gt; Symbols) | 
 **limit_levels** | **int**| The maximum number of levels to include in the response. | [optional] 

### Return type

[**V1OrderBookBase**](V1OrderBookBase.md)

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

# **v1_orderbooks_symbol_id_depth_current_get**
> V1OrderBookDepth v1_orderbooks_symbol_id_depth_current_get(symbol_id, limit_levels=limit_levels)

Current depth of the order book

Retrieves the current depth of the order book for the specified symbol.

### Example

* Api Key Authentication (ApiKey):

```python
import api_bricks_coinapi_market_data_api_rest
from api_bricks_coinapi_market_data_api_rest.models.v1_order_book_depth import V1OrderBookDepth
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
    api_instance = api_bricks_coinapi_market_data_api_rest.OrderBookApi(api_client)
    symbol_id = 'symbol_id_example' # str | The symbol ID (from the Metadata -> Symbols)
    limit_levels = 56 # int | The maximum number of levels to include in the response. (optional)

    try:
        # Current depth of the order book
        api_response = api_instance.v1_orderbooks_symbol_id_depth_current_get(symbol_id, limit_levels=limit_levels)
        print("The response of OrderBookApi->v1_orderbooks_symbol_id_depth_current_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OrderBookApi->v1_orderbooks_symbol_id_depth_current_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol_id** | **str**| The symbol ID (from the Metadata -&gt; Symbols) | 
 **limit_levels** | **int**| The maximum number of levels to include in the response. | [optional] 

### Return type

[**V1OrderBookDepth**](V1OrderBookDepth.md)

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

# **v1_orderbooks_symbol_id_history_get**
> List[V1OrderBook] v1_orderbooks_symbol_id_history_get(symbol_id, var_date=var_date, time_start=time_start, time_end=time_end, limit=limit, limit_levels=limit_levels)

Historical data

Get historical order book snapshots for a specific symbol within time range, returned in time ascending order.
            
:::info
The historical order book data via the REST API is currently limited by a number of updates and to the maximum number of 20 levels.
:::

:::warning
The 'time_start' and 'time_end' parameters must be from the same day as this endpoint provides intraday data only for specific day.
Please use the 'date' parameter instead for querying data for a specific day without filter.
:::

### Example

* Api Key Authentication (ApiKey):

```python
import api_bricks_coinapi_market_data_api_rest
from api_bricks_coinapi_market_data_api_rest.models.v1_order_book import V1OrderBook
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
    api_instance = api_bricks_coinapi_market_data_api_rest.OrderBookApi(api_client)
    symbol_id = 'symbol_id_example' # str | Symbol identifier for requested timeseries (from the Metadata -> Symbols)
    var_date = 'var_date_example' # str | Date in ISO 8601, returned data is for the whole given day (preferred method, required if 'time_start' is not provided) (optional)
    time_start = 'time_start_example' # str | Starting time in ISO 8601 (deprecated, use 'date' instead) (optional)
    time_end = 'time_end_example' # str | Timeseries ending time in ISO 8601 (deprecated, use 'date' instead) (optional)
    limit = 100 # int | Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional) (default to 100)
    limit_levels = 56 # int | Maximum amount of levels from each side of the book to include in response (optional) (optional)

    try:
        # Historical data
        api_response = api_instance.v1_orderbooks_symbol_id_history_get(symbol_id, var_date=var_date, time_start=time_start, time_end=time_end, limit=limit, limit_levels=limit_levels)
        print("The response of OrderBookApi->v1_orderbooks_symbol_id_history_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OrderBookApi->v1_orderbooks_symbol_id_history_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol_id** | **str**| Symbol identifier for requested timeseries (from the Metadata -&gt; Symbols) | 
 **var_date** | **str**| Date in ISO 8601, returned data is for the whole given day (preferred method, required if &#39;time_start&#39; is not provided) | [optional] 
 **time_start** | **str**| Starting time in ISO 8601 (deprecated, use &#39;date&#39; instead) | [optional] 
 **time_end** | **str**| Timeseries ending time in ISO 8601 (deprecated, use &#39;date&#39; instead) | [optional] 
 **limit** | **int**| Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]
 **limit_levels** | **int**| Maximum amount of levels from each side of the book to include in response (optional) | [optional] 

### Return type

[**List[V1OrderBook]**](V1OrderBook.md)

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

# **v1_orderbooks_symbol_id_latest_get**
> List[V1OrderBook] v1_orderbooks_symbol_id_latest_get(symbol_id, limit=limit, limit_levels=limit_levels)

Latest data

Get latest order book snapshots for a specific symbol, returned in time descending order.
            
:::info
The historical order book data via the REST API is currently limited by a number of updates and to the maximum number of 20 levels.
:::

### Example

* Api Key Authentication (ApiKey):

```python
import api_bricks_coinapi_market_data_api_rest
from api_bricks_coinapi_market_data_api_rest.models.v1_order_book import V1OrderBook
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
    api_instance = api_bricks_coinapi_market_data_api_rest.OrderBookApi(api_client)
    symbol_id = 'symbol_id_example' # str | Symbol identifier of requested timeseries (from the Metadata -> Symbols)
    limit = 100 # int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional) (default to 100)
    limit_levels = 56 # int | Maximum amount of levels from each side of the book to include in response (optional) (optional)

    try:
        # Latest data
        api_response = api_instance.v1_orderbooks_symbol_id_latest_get(symbol_id, limit=limit, limit_levels=limit_levels)
        print("The response of OrderBookApi->v1_orderbooks_symbol_id_latest_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OrderBookApi->v1_orderbooks_symbol_id_latest_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol_id** | **str**| Symbol identifier of requested timeseries (from the Metadata -&gt; Symbols) | 
 **limit** | **int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]
 **limit_levels** | **int**| Maximum amount of levels from each side of the book to include in response (optional) | [optional] 

### Return type

[**List[V1OrderBook]**](V1OrderBook.md)

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

