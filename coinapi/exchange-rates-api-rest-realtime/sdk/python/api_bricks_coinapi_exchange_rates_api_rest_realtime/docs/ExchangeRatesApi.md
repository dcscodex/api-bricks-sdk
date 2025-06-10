# api_bricks_coinapi_exchange_rates_api_rest_realtime.ExchangeRatesApi

All URIs are relative to *https://api-realtime.exrates.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_specific_rate**](ExchangeRatesApi.md#get_specific_rate) | **GET** /v1/exchangerate/{asset_id_base}/{asset_id_quote} | Get specific rate
[**v1_exchangerate_asset_id_base_get**](ExchangeRatesApi.md#v1_exchangerate_asset_id_base_get) | **GET** /v1/exchangerate/{asset_id_base} | Get all current rates


# **get_specific_rate**
> V1ExchangeRate get_specific_rate(asset_id_base, asset_id_quote)

Get specific rate

Retrieves the exchange rate for a specific base and quote asset at a given time or the current rate.
            
:::info
If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements.
:::

### Example

* Api Key Authentication (APIKey):
* Api Key Authentication (JWT):

```python
import api_bricks_coinapi_exchange_rates_api_rest_realtime
from api_bricks_coinapi_exchange_rates_api_rest_realtime.models.v1_exchange_rate import V1ExchangeRate
from api_bricks_coinapi_exchange_rates_api_rest_realtime.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api-realtime.exrates.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = api_bricks_coinapi_exchange_rates_api_rest_realtime.Configuration(
    host = "https://api-realtime.exrates.coinapi.io"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: APIKey
configuration.api_key['APIKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['APIKey'] = 'Bearer'

# Configure API key authorization: JWT
configuration.api_key['JWT'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['JWT'] = 'Bearer'

# Enter a context with an instance of the API client
with api_bricks_coinapi_exchange_rates_api_rest_realtime.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = api_bricks_coinapi_exchange_rates_api_rest_realtime.ExchangeRatesApi(api_client)
    asset_id_base = 'asset_id_base_example' # str | Requested exchange rate base asset identifier (from the Metadata -> Assets)
    asset_id_quote = 'asset_id_quote_example' # str | Requested exchange rate quote asset identifier (from the Metadata -> Assets)

    try:
        # Get specific rate
        api_response = api_instance.get_specific_rate(asset_id_base, asset_id_quote)
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

### Return type

[**V1ExchangeRate**](V1ExchangeRate.md)

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

# **v1_exchangerate_asset_id_base_get**
> V1ExchangeRates v1_exchangerate_asset_id_base_get(asset_id_base, filter_asset_id=filter_asset_id, invert=invert)

Get all current rates

Get the current exchange rate between requested asset and all other assets.
            
:::info
If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements.
:::
            
:::info
You can invert the rates by using Y = 1 / X equation, for example BTC/USD = 1 / (USD/BTC);
:::

### Example

* Api Key Authentication (APIKey):
* Api Key Authentication (JWT):

```python
import api_bricks_coinapi_exchange_rates_api_rest_realtime
from api_bricks_coinapi_exchange_rates_api_rest_realtime.models.v1_exchange_rates import V1ExchangeRates
from api_bricks_coinapi_exchange_rates_api_rest_realtime.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api-realtime.exrates.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = api_bricks_coinapi_exchange_rates_api_rest_realtime.Configuration(
    host = "https://api-realtime.exrates.coinapi.io"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: APIKey
configuration.api_key['APIKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['APIKey'] = 'Bearer'

# Configure API key authorization: JWT
configuration.api_key['JWT'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['JWT'] = 'Bearer'

# Enter a context with an instance of the API client
with api_bricks_coinapi_exchange_rates_api_rest_realtime.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = api_bricks_coinapi_exchange_rates_api_rest_realtime.ExchangeRatesApi(api_client)
    asset_id_base = 'asset_id_base_example' # str | Requested exchange rates base asset identifier (from the Metadata -> Assets)
    filter_asset_id = 'filter_asset_id_example' # str | Comma or semicolon delimited asset identifiers used to filter response (optional) (optional)
    invert = False # bool | True will invert all the rates (optional, if true then rates will be calculated as `rate = 1 / actual_rate` eg. `USD/BTC` as `BTC/USD`) (optional) (default to False)

    try:
        # Get all current rates
        api_response = api_instance.v1_exchangerate_asset_id_base_get(asset_id_base, filter_asset_id=filter_asset_id, invert=invert)
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

### Return type

[**V1ExchangeRates**](V1ExchangeRates.md)

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

