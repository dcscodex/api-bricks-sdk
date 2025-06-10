# api_bricks_coinapi_market_data_api_rest.OptionsApi

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_options_exchange_id_current_get**](OptionsApi.md#v1_options_exchange_id_current_get) | **GET** /v1/options/{exchange_id}/current | Current data by Exchange


# **v1_options_exchange_id_current_get**
> List[OptionsOptionExchangeGroup] v1_options_exchange_id_current_get(exchange_id)

Current data by Exchange

Get current options data for a specific exchange.

Returns option data grouped by underlying asset, quote currency, and expiration time,
with quotes for both calls and puts at each strike price.

### Example

* Api Key Authentication (ApiKey):

```python
import api_bricks_coinapi_market_data_api_rest
from api_bricks_coinapi_market_data_api_rest.models.options_option_exchange_group import OptionsOptionExchangeGroup
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
    api_instance = api_bricks_coinapi_market_data_api_rest.OptionsApi(api_client)
    exchange_id = 'exchange_id_example' # str | Exchange identifier (from the Metadata -> Exchanges)

    try:
        # Current data by Exchange
        api_response = api_instance.v1_options_exchange_id_current_get(exchange_id)
        print("The response of OptionsApi->v1_options_exchange_id_current_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OptionsApi->v1_options_exchange_id_current_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **str**| Exchange identifier (from the Metadata -&gt; Exchanges) | 

### Return type

[**List[OptionsOptionExchangeGroup]**](OptionsOptionExchangeGroup.md)

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

