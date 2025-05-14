# api_bricks_stock_api_rest.MetadataApi

All URIs are relative to *https://api-historical.stock.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_exchanges_get**](MetadataApi.md#v1_exchanges_get) | **GET** /v1/exchanges | List of exchanges
[**v1_symbols_exchange_id_get**](MetadataApi.md#v1_symbols_exchange_id_get) | **GET** /v1/symbols/{exchange_id} | List of symbols for the exchange


# **v1_exchanges_get**
> List[FinFeedAPIExchangeModel] v1_exchanges_get()

List of exchanges

### Example


```python
import api_bricks_stock_api_rest
from api_bricks_stock_api_rest.models.fin_feed_api_exchange_model import FinFeedAPIExchangeModel
from api_bricks_stock_api_rest.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api-historical.stock.finfeedapi.com
# See configuration.py for a list of all supported configuration parameters.
configuration = api_bricks_stock_api_rest.Configuration(
    host = "https://api-historical.stock.finfeedapi.com"
)


# Enter a context with an instance of the API client
with api_bricks_stock_api_rest.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = api_bricks_stock_api_rest.MetadataApi(api_client)

    try:
        # List of exchanges
        api_response = api_instance.v1_exchanges_get()
        print("The response of MetadataApi->v1_exchanges_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MetadataApi->v1_exchanges_get: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**List[FinFeedAPIExchangeModel]**](FinFeedAPIExchangeModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_symbols_exchange_id_get**
> List[FinFeedAPISymbolModel] v1_symbols_exchange_id_get(exchange_id)

List of symbols for the exchange

### Example


```python
import api_bricks_stock_api_rest
from api_bricks_stock_api_rest.models.fin_feed_api_symbol_model import FinFeedAPISymbolModel
from api_bricks_stock_api_rest.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api-historical.stock.finfeedapi.com
# See configuration.py for a list of all supported configuration parameters.
configuration = api_bricks_stock_api_rest.Configuration(
    host = "https://api-historical.stock.finfeedapi.com"
)


# Enter a context with an instance of the API client
with api_bricks_stock_api_rest.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = api_bricks_stock_api_rest.MetadataApi(api_client)
    exchange_id = 'exchange_id_example' # str | 

    try:
        # List of symbols for the exchange
        api_response = api_instance.v1_symbols_exchange_id_get(exchange_id)
        print("The response of MetadataApi->v1_symbols_exchange_id_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MetadataApi->v1_symbols_exchange_id_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **str**|  | 

### Return type

[**List[FinFeedAPISymbolModel]**](FinFeedAPISymbolModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

