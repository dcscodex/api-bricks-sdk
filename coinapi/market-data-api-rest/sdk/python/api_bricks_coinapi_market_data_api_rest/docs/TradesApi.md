# api_bricks_coinapi_market_data_api_rest.TradesApi

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_trades_latest_get**](TradesApi.md#v1_trades_latest_get) | **GET** /v1/trades/latest | Latest data
[**v1_trades_symbol_id_history_get**](TradesApi.md#v1_trades_symbol_id_history_get) | **GET** /v1/trades/{symbol_id}/history | Historical data
[**v1_trades_symbol_id_latest_get**](TradesApi.md#v1_trades_symbol_id_latest_get) | **GET** /v1/trades/{symbol_id}/latest | Latest data by symbol_id


# **v1_trades_latest_get**
> List[V1Trade] v1_trades_latest_get(filter_symbol_id=filter_symbol_id, include_id=include_id, limit=limit)

Latest data

Get latest trades executed up to 1 minute ago. Latest data is always returned in time descending order.

### Example

* Api Key Authentication (ApiKey):

```python
import api_bricks_coinapi_market_data_api_rest
from api_bricks_coinapi_market_data_api_rest.models.v1_trade import V1Trade
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
    api_instance = api_bricks_coinapi_market_data_api_rest.TradesApi(api_client)
    filter_symbol_id = 'filter_symbol_id_example' # str | Comma or semicolon delimited parts of symbol identifier used to filter response. (optional) (optional)
    include_id = False # bool | Information that additional exchange trade identifier should be included in the `id_trade` parameter of the trade if exchange providing identifiers. (optional) (default to False)
    limit = 100 # int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional) (default to 100)

    try:
        # Latest data
        api_response = api_instance.v1_trades_latest_get(filter_symbol_id=filter_symbol_id, include_id=include_id, limit=limit)
        print("The response of TradesApi->v1_trades_latest_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TradesApi->v1_trades_latest_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_symbol_id** | **str**| Comma or semicolon delimited parts of symbol identifier used to filter response. (optional) | [optional] 
 **include_id** | **bool**| Information that additional exchange trade identifier should be included in the &#x60;id_trade&#x60; parameter of the trade if exchange providing identifiers. | [optional] [default to False]
 **limit** | **int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**List[V1Trade]**](V1Trade.md)

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

# **v1_trades_symbol_id_history_get**
> List[V1Trade] v1_trades_symbol_id_history_get(symbol_id, var_date=var_date, time_start=time_start, time_end=time_end, limit=limit, include_id=include_id)

Historical data

Get history transactions from specific symbol, returned in time ascending order.

:::warning
The 'time_start' and 'time_end' parameters must be from the same day as this endpoint provides intraday data only for specific day.
Please use the 'date' parameter instead for querying data for a specific day without filter.
:::

### Example

* Api Key Authentication (ApiKey):

```python
import api_bricks_coinapi_market_data_api_rest
from api_bricks_coinapi_market_data_api_rest.models.v1_trade import V1Trade
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
    api_instance = api_bricks_coinapi_market_data_api_rest.TradesApi(api_client)
    symbol_id = 'symbol_id_example' # str | Symbol identifier for requested timeseries (from the Metadata -> Symbols)
    var_date = 'var_date_example' # str | Date in ISO 8601, returned data is for the whole given day (required if 'time_start' is not provided) (optional)
    time_start = 'time_start_example' # str | Starting time in ISO 8601 (optional)
    time_end = 'time_end_example' # str | Timeseries ending time in ISO 8601 (optional)
    limit = 100 # int | Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional) (default to 100)
    include_id = False # bool | Information that additional exchange trade identifier should be included in the `id_trade` parameter of the trade if exchange providing identifiers. (optional) (default to False)

    try:
        # Historical data
        api_response = api_instance.v1_trades_symbol_id_history_get(symbol_id, var_date=var_date, time_start=time_start, time_end=time_end, limit=limit, include_id=include_id)
        print("The response of TradesApi->v1_trades_symbol_id_history_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TradesApi->v1_trades_symbol_id_history_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol_id** | **str**| Symbol identifier for requested timeseries (from the Metadata -&gt; Symbols) | 
 **var_date** | **str**| Date in ISO 8601, returned data is for the whole given day (required if &#39;time_start&#39; is not provided) | [optional] 
 **time_start** | **str**| Starting time in ISO 8601 | [optional] 
 **time_end** | **str**| Timeseries ending time in ISO 8601 | [optional] 
 **limit** | **int**| Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]
 **include_id** | **bool**| Information that additional exchange trade identifier should be included in the &#x60;id_trade&#x60; parameter of the trade if exchange providing identifiers. | [optional] [default to False]

### Return type

[**List[V1Trade]**](V1Trade.md)

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

# **v1_trades_symbol_id_latest_get**
> List[V1Trade] v1_trades_symbol_id_latest_get(symbol_id, limit=limit, include_id=include_id)

Latest data by symbol_id

Get latest trades executed up to 1 minute ago. Latest data is always returned in time descending order.

### Example

* Api Key Authentication (ApiKey):

```python
import api_bricks_coinapi_market_data_api_rest
from api_bricks_coinapi_market_data_api_rest.models.v1_trade import V1Trade
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
    api_instance = api_bricks_coinapi_market_data_api_rest.TradesApi(api_client)
    symbol_id = 'symbol_id_example' # str | Symbol identifier for requested timeseries (from the Metadata -> Symbols)
    limit = 100 # int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional) (default to 100)
    include_id = False # bool | Information that additional exchange trade identifier should be included in the `id_trade` parameter of the trade if exchange providing identifiers. (optional) (default to False)

    try:
        # Latest data by symbol_id
        api_response = api_instance.v1_trades_symbol_id_latest_get(symbol_id, limit=limit, include_id=include_id)
        print("The response of TradesApi->v1_trades_symbol_id_latest_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TradesApi->v1_trades_symbol_id_latest_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol_id** | **str**| Symbol identifier for requested timeseries (from the Metadata -&gt; Symbols) | 
 **limit** | **int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]
 **include_id** | **bool**| Information that additional exchange trade identifier should be included in the &#x60;id_trade&#x60; parameter of the trade if exchange providing identifiers. | [optional] [default to False]

### Return type

[**List[V1Trade]**](V1Trade.md)

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

