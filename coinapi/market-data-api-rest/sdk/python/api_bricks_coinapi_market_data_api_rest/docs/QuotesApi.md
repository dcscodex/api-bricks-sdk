# api_bricks_coinapi_market_data_api_rest.QuotesApi

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_quotes_current_get**](QuotesApi.md#v1_quotes_current_get) | **GET** /v1/quotes/current | Current data
[**v1_quotes_latest_get**](QuotesApi.md#v1_quotes_latest_get) | **GET** /v1/quotes/latest | Latest data
[**v1_quotes_symbol_id_current_get**](QuotesApi.md#v1_quotes_symbol_id_current_get) | **GET** /v1/quotes/{symbol_id}/current | Current quotes for a specific symbol
[**v1_quotes_symbol_id_history_get**](QuotesApi.md#v1_quotes_symbol_id_history_get) | **GET** /v1/quotes/{symbol_id}/history | Historical data
[**v1_quotes_symbol_id_latest_get**](QuotesApi.md#v1_quotes_symbol_id_latest_get) | **GET** /v1/quotes/{symbol_id}/latest | Latest quote updates for a specific symbol


# **v1_quotes_current_get**
> List[V1QuoteTrade] v1_quotes_current_get(filter_symbol_id=filter_symbol_id)

Current data

Get current quotes for all symbols or for a specific symbol.
            
:::info
When requesting current data for a specific symbol, output is not encapsulated into JSON array as only one item is returned.
:::

### Example

* Api Key Authentication (ApiKey):

```python
import api_bricks_coinapi_market_data_api_rest
from api_bricks_coinapi_market_data_api_rest.models.v1_quote_trade import V1QuoteTrade
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
    api_instance = api_bricks_coinapi_market_data_api_rest.QuotesApi(api_client)
    filter_symbol_id = 'filter_symbol_id_example' # str | Comma or semicolon delimited parts of symbol identifier used to filter response. (optional) (optional)

    try:
        # Current data
        api_response = api_instance.v1_quotes_current_get(filter_symbol_id=filter_symbol_id)
        print("The response of QuotesApi->v1_quotes_current_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling QuotesApi->v1_quotes_current_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_symbol_id** | **str**| Comma or semicolon delimited parts of symbol identifier used to filter response. (optional) | [optional] 

### Return type

[**List[V1QuoteTrade]**](V1QuoteTrade.md)

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

# **v1_quotes_latest_get**
> List[V1Quote] v1_quotes_latest_get(filter_symbol_id=filter_symbol_id, limit=limit)

Latest data

Get latest updates of the quotes up to 1 minute ago. Latest data is always returned in time descending order.

### Example

* Api Key Authentication (ApiKey):

```python
import api_bricks_coinapi_market_data_api_rest
from api_bricks_coinapi_market_data_api_rest.models.v1_quote import V1Quote
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
    api_instance = api_bricks_coinapi_market_data_api_rest.QuotesApi(api_client)
    filter_symbol_id = 'filter_symbol_id_example' # str | Comma or semicolon delimited parts of symbol identifier used to filter response. (optional) (optional)
    limit = 100 # int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional) (default to 100)

    try:
        # Latest data
        api_response = api_instance.v1_quotes_latest_get(filter_symbol_id=filter_symbol_id, limit=limit)
        print("The response of QuotesApi->v1_quotes_latest_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling QuotesApi->v1_quotes_latest_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_symbol_id** | **str**| Comma or semicolon delimited parts of symbol identifier used to filter response. (optional) | [optional] 
 **limit** | **int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**List[V1Quote]**](V1Quote.md)

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

# **v1_quotes_symbol_id_current_get**
> V1QuoteTrade v1_quotes_symbol_id_current_get(symbol_id)

Current quotes for a specific symbol

### Example

* Api Key Authentication (ApiKey):

```python
import api_bricks_coinapi_market_data_api_rest
from api_bricks_coinapi_market_data_api_rest.models.v1_quote_trade import V1QuoteTrade
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
    api_instance = api_bricks_coinapi_market_data_api_rest.QuotesApi(api_client)
    symbol_id = 'symbol_id_example' # str | The symbol identifier (from the Metadata -> Symbols)

    try:
        # Current quotes for a specific symbol
        api_response = api_instance.v1_quotes_symbol_id_current_get(symbol_id)
        print("The response of QuotesApi->v1_quotes_symbol_id_current_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling QuotesApi->v1_quotes_symbol_id_current_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol_id** | **str**| The symbol identifier (from the Metadata -&gt; Symbols) | 

### Return type

[**V1QuoteTrade**](V1QuoteTrade.md)

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

# **v1_quotes_symbol_id_history_get**
> List[V1Quote] v1_quotes_symbol_id_history_get(symbol_id, var_date=var_date, time_start=time_start, time_end=time_end, limit=limit)

Historical data

Get historical quote updates within requested time range, returned in time ascending order.

:::warning
The 'time_start' and 'time_end' parameters must be from the same day as this endpoint provides intraday data only for specific day.
Please use the 'date' parameter instead for querying data for a specific day without filter.
:::

### Example

* Api Key Authentication (ApiKey):

```python
import api_bricks_coinapi_market_data_api_rest
from api_bricks_coinapi_market_data_api_rest.models.v1_quote import V1Quote
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
    api_instance = api_bricks_coinapi_market_data_api_rest.QuotesApi(api_client)
    symbol_id = 'symbol_id_example' # str | Symbol identifier for requested timeseries (from the Metadata -> Symbols)
    var_date = 'var_date_example' # str | Date in ISO 8601, returned data is for the whole given day (preferred method, required if 'time_start' is not provided) (optional)
    time_start = 'time_start_example' # str | Starting time in ISO 8601 (optional)
    time_end = 'time_end_example' # str | Timeseries ending time in ISO 8601 (optional)
    limit = 100 # int | Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional) (default to 100)

    try:
        # Historical data
        api_response = api_instance.v1_quotes_symbol_id_history_get(symbol_id, var_date=var_date, time_start=time_start, time_end=time_end, limit=limit)
        print("The response of QuotesApi->v1_quotes_symbol_id_history_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling QuotesApi->v1_quotes_symbol_id_history_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol_id** | **str**| Symbol identifier for requested timeseries (from the Metadata -&gt; Symbols) | 
 **var_date** | **str**| Date in ISO 8601, returned data is for the whole given day (preferred method, required if &#39;time_start&#39; is not provided) | [optional] 
 **time_start** | **str**| Starting time in ISO 8601 | [optional] 
 **time_end** | **str**| Timeseries ending time in ISO 8601 | [optional] 
 **limit** | **int**| Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**List[V1Quote]**](V1Quote.md)

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

# **v1_quotes_symbol_id_latest_get**
> List[V1Quote] v1_quotes_symbol_id_latest_get(symbol_id, limit=limit)

Latest quote updates for a specific symbol

### Example

* Api Key Authentication (ApiKey):

```python
import api_bricks_coinapi_market_data_api_rest
from api_bricks_coinapi_market_data_api_rest.models.v1_quote import V1Quote
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
    api_instance = api_bricks_coinapi_market_data_api_rest.QuotesApi(api_client)
    symbol_id = 'symbol_id_example' # str | Symbol identifier of requested timeseries (from the Metadata -> Symbols)
    limit = 100 # int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional) (default to 100)

    try:
        # Latest quote updates for a specific symbol
        api_response = api_instance.v1_quotes_symbol_id_latest_get(symbol_id, limit=limit)
        print("The response of QuotesApi->v1_quotes_symbol_id_latest_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling QuotesApi->v1_quotes_symbol_id_latest_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol_id** | **str**| Symbol identifier of requested timeseries (from the Metadata -&gt; Symbols) | 
 **limit** | **int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**List[V1Quote]**](V1Quote.md)

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

