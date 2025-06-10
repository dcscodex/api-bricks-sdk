# api_bricks_coinapi_market_data_api_rest.OrderBookL3Api

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_orderbooks3_current_get**](OrderBookL3Api.md#v1_orderbooks3_current_get) | **GET** /v1/orderbooks3/current | Current order books
[**v1_orderbooks3_symbol_id_current_get**](OrderBookL3Api.md#v1_orderbooks3_symbol_id_current_get) | **GET** /v1/orderbooks3/{symbol_id}/current | Current order book by symbol_id


# **v1_orderbooks3_current_get**
> List[V1OrderBookBase] v1_orderbooks3_current_get(filter_symbol_id=filter_symbol_id, limit_levels=limit_levels)

Current order books

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
    api_instance = api_bricks_coinapi_market_data_api_rest.OrderBookL3Api(api_client)
    filter_symbol_id = 'filter_symbol_id_example' # str | Comma or semicolon delimited parts of symbol identifier used to filter the response. (optional)
    limit_levels = 56 # int | The maximum number of levels to include in the response. (optional)

    try:
        # Current order books
        api_response = api_instance.v1_orderbooks3_current_get(filter_symbol_id=filter_symbol_id, limit_levels=limit_levels)
        print("The response of OrderBookL3Api->v1_orderbooks3_current_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OrderBookL3Api->v1_orderbooks3_current_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_symbol_id** | **str**| Comma or semicolon delimited parts of symbol identifier used to filter the response. | [optional] 
 **limit_levels** | **int**| The maximum number of levels to include in the response. | [optional] 

### Return type

[**List[V1OrderBookBase]**](V1OrderBookBase.md)

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

# **v1_orderbooks3_symbol_id_current_get**
> V1OrderBookBase v1_orderbooks3_symbol_id_current_get(symbol_id, limit_levels=limit_levels)

Current order book by symbol_id

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
    api_instance = api_bricks_coinapi_market_data_api_rest.OrderBookL3Api(api_client)
    symbol_id = 'symbol_id_example' # str | The symbol ID (from the Metadata -> Symbols)
    limit_levels = 56 # int | The maximum number of levels to include in the response. (optional)

    try:
        # Current order book by symbol_id
        api_response = api_instance.v1_orderbooks3_symbol_id_current_get(symbol_id, limit_levels=limit_levels)
        print("The response of OrderBookL3Api->v1_orderbooks3_symbol_id_current_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OrderBookL3Api->v1_orderbooks3_symbol_id_current_get: %s\n" % e)
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

