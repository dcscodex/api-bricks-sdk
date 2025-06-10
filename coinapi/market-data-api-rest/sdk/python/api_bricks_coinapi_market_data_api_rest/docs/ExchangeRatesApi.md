# api_bricks_coinapi_market_data_api_rest.ExchangeRatesApi

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_specific_rate**](ExchangeRatesApi.md#get_specific_rate) | **GET** /v1/exchangerate/{asset_id_base}/{asset_id_quote} | Get specific rate
[**v1_exchangerate_asset_id_base_asset_id_quote_history_get**](ExchangeRatesApi.md#v1_exchangerate_asset_id_base_asset_id_quote_history_get) | **GET** /v1/exchangerate/{asset_id_base}/{asset_id_quote}/history | Timeseries data
[**v1_exchangerate_asset_id_base_get**](ExchangeRatesApi.md#v1_exchangerate_asset_id_base_get) | **GET** /v1/exchangerate/{asset_id_base} | Get all current rates
[**v1_exchangerate_history_periods_get**](ExchangeRatesApi.md#v1_exchangerate_history_periods_get) | **GET** /v1/exchangerate/history/periods | Timeseries periods


# **get_specific_rate**
> V1ExchangeRate get_specific_rate(asset_id_base, asset_id_quote, time=time)

Get specific rate

Retrieves the exchange rate for a specific base and quote asset at a given time or the current rate.
            
:::info
If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements.
:::

### Example

* Api Key Authentication (ApiKey):

```python
import api_bricks_coinapi_market_data_api_rest
from api_bricks_coinapi_market_data_api_rest.models.v1_exchange_rate import V1ExchangeRate
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
    api_instance = api_bricks_coinapi_market_data_api_rest.ExchangeRatesApi(api_client)
    asset_id_base = 'asset_id_base_example' # str | Requested exchange rate base asset identifier (from the Metadata -> Assets)
    asset_id_quote = 'asset_id_quote_example' # str | Requested exchange rate quote asset identifier (from the Metadata -> Assets)
    time = 'time_example' # str | Time at which exchange rate is calculated (optional, if not supplied then current rate is returned) (optional)

    try:
        # Get specific rate
        api_response = api_instance.get_specific_rate(asset_id_base, asset_id_quote, time=time)
        print("The response of ExchangeRatesApi->get_specific_rate:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ExchangeRatesApi->get_specific_rate: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asset_id_base** | **str**| Requested exchange rate base asset identifier (from the Metadata -&gt; Assets) | 
 **asset_id_quote** | **str**| Requested exchange rate quote asset identifier (from the Metadata -&gt; Assets) | 
 **time** | **str**| Time at which exchange rate is calculated (optional, if not supplied then current rate is returned) | [optional] 

### Return type

[**V1ExchangeRate**](V1ExchangeRate.md)

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

# **v1_exchangerate_asset_id_base_asset_id_quote_history_get**
> List[V1ExchangeRatesTimeseriesItem] v1_exchangerate_asset_id_base_asset_id_quote_history_get(asset_id_base, asset_id_quote, period_id=period_id, time_start=time_start, time_end=time_end, limit=limit)

Timeseries data

Get the historical exchange rates between two assets in the form of the timeseries.

### Example

* Api Key Authentication (ApiKey):

```python
import api_bricks_coinapi_market_data_api_rest
from api_bricks_coinapi_market_data_api_rest.models.v1_exchange_rates_timeseries_item import V1ExchangeRatesTimeseriesItem
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
    api_instance = api_bricks_coinapi_market_data_api_rest.ExchangeRatesApi(api_client)
    asset_id_base = 'asset_id_base_example' # str | Requested exchange rates base asset identifier (from the Metadata -> Assets)
    asset_id_quote = 'asset_id_quote_example' # str | Requested exchange rates base asset identifier (from the Metadata -> Assets)
    period_id = 'period_id_example' # str | Identifier of requested timeseries period (required, e.g. `5SEC` or `1HRS`) (optional)
    time_start = 'time_start_example' # str | Timeseries starting time in ISO 8601 (required) (optional)
    time_end = 'time_end_example' # str | Timeseries ending time in ISO 8601 (required) (optional)
    limit = 100 # int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional) (default to 100)

    try:
        # Timeseries data
        api_response = api_instance.v1_exchangerate_asset_id_base_asset_id_quote_history_get(asset_id_base, asset_id_quote, period_id=period_id, time_start=time_start, time_end=time_end, limit=limit)
        print("The response of ExchangeRatesApi->v1_exchangerate_asset_id_base_asset_id_quote_history_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ExchangeRatesApi->v1_exchangerate_asset_id_base_asset_id_quote_history_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asset_id_base** | **str**| Requested exchange rates base asset identifier (from the Metadata -&gt; Assets) | 
 **asset_id_quote** | **str**| Requested exchange rates base asset identifier (from the Metadata -&gt; Assets) | 
 **period_id** | **str**| Identifier of requested timeseries period (required, e.g. &#x60;5SEC&#x60; or &#x60;1HRS&#x60;) | [optional] 
 **time_start** | **str**| Timeseries starting time in ISO 8601 (required) | [optional] 
 **time_end** | **str**| Timeseries ending time in ISO 8601 (required) | [optional] 
 **limit** | **int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**List[V1ExchangeRatesTimeseriesItem]**](V1ExchangeRatesTimeseriesItem.md)

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

# **v1_exchangerate_asset_id_base_get**
> V1ExchangeRates v1_exchangerate_asset_id_base_get(asset_id_base, filter_asset_id=filter_asset_id, invert=invert, time=time)

Get all current rates

Get the current exchange rate between requested asset and all other assets.
            
:::info
If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements.
:::
            
:::info
You can invert the rates by using Y = 1 / X equation, for example BTC/USD = 1 / (USD/BTC);
:::

### Example

* Api Key Authentication (ApiKey):

```python
import api_bricks_coinapi_market_data_api_rest
from api_bricks_coinapi_market_data_api_rest.models.v1_exchange_rates import V1ExchangeRates
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
    api_instance = api_bricks_coinapi_market_data_api_rest.ExchangeRatesApi(api_client)
    asset_id_base = 'asset_id_base_example' # str | Requested exchange rates base asset identifier (from the Metadata -> Assets)
    filter_asset_id = 'filter_asset_id_example' # str | Comma or semicolon delimited asset identifiers used to filter response (optional) (optional)
    invert = False # bool | True will invert all the rates (optional, if true then rates will be calculated as `rate = 1 / actual_rate` eg. `USD/BTC` as `BTC/USD`) (optional) (default to False)
    time = 'time_example' # str | Time for historical rates (optional) (optional)

    try:
        # Get all current rates
        api_response = api_instance.v1_exchangerate_asset_id_base_get(asset_id_base, filter_asset_id=filter_asset_id, invert=invert, time=time)
        print("The response of ExchangeRatesApi->v1_exchangerate_asset_id_base_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ExchangeRatesApi->v1_exchangerate_asset_id_base_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asset_id_base** | **str**| Requested exchange rates base asset identifier (from the Metadata -&gt; Assets) | 
 **filter_asset_id** | **str**| Comma or semicolon delimited asset identifiers used to filter response (optional) | [optional] 
 **invert** | **bool**| True will invert all the rates (optional, if true then rates will be calculated as &#x60;rate &#x3D; 1 / actual_rate&#x60; eg. &#x60;USD/BTC&#x60; as &#x60;BTC/USD&#x60;) | [optional] [default to False]
 **time** | **str**| Time for historical rates (optional) | [optional] 

### Return type

[**V1ExchangeRates**](V1ExchangeRates.md)

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

# **v1_exchangerate_history_periods_get**
> List[V1TimeseriesPeriod] v1_exchangerate_history_periods_get()

Timeseries periods

You can also obtain historical exchange rates of any asset pair, grouped into time periods.
Get full list of supported time periods available for requesting exchange rates historical timeseries data.
            
## Timeseries periods
Time unit |	Period identifiers
--- | ---
Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC
Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN
Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS
Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY

### Example

* Api Key Authentication (ApiKey):

```python
import api_bricks_coinapi_market_data_api_rest
from api_bricks_coinapi_market_data_api_rest.models.v1_timeseries_period import V1TimeseriesPeriod
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
    api_instance = api_bricks_coinapi_market_data_api_rest.ExchangeRatesApi(api_client)

    try:
        # Timeseries periods
        api_response = api_instance.v1_exchangerate_history_periods_get()
        print("The response of ExchangeRatesApi->v1_exchangerate_history_periods_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ExchangeRatesApi->v1_exchangerate_history_periods_get: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**List[V1TimeseriesPeriod]**](V1TimeseriesPeriod.md)

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

