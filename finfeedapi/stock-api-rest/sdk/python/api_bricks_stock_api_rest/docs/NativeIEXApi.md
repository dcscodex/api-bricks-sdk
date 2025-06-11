# api_bricks_stock_api_rest.NativeIEXApi

All URIs are relative to *https://api-historical.stock.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_native_iex_admin_messages_symbol_get**](NativeIEXApi.md#v1_native_iex_admin_messages_symbol_get) | **GET** /v1/native/iex/admin/messages/{symbol} | Get Admin Messages
[**v1_native_iex_admin_system_event_get**](NativeIEXApi.md#v1_native_iex_admin_system_event_get) | **GET** /v1/native/iex/admin/system-event | Get System Events
[**v1_native_iex_level1_quote_symbol_get**](NativeIEXApi.md#v1_native_iex_level1_quote_symbol_get) | **GET** /v1/native/iex/level1-quote/{symbol} | Get Level-1 Quotes
[**v1_native_iex_level2_price_level_update_symbol_get**](NativeIEXApi.md#v1_native_iex_level2_price_level_update_symbol_get) | **GET** /v1/native/iex/level2-price-level-update/{symbol} | Get Level-2 Price Level Book
[**v1_native_iex_level3_order_book_symbol_get**](NativeIEXApi.md#v1_native_iex_level3_order_book_symbol_get) | **GET** /v1/native/iex/level3-order-book/{symbol} | Get Level-3 Order Book
[**v1_native_iex_trade_symbol_get**](NativeIEXApi.md#v1_native_iex_trade_symbol_get) | **GET** /v1/native/iex/trade/{symbol} | Get Trades


# **v1_native_iex_admin_messages_symbol_get**
> List[AdminAdminMessageModel] v1_native_iex_admin_messages_symbol_get(symbol, var_date)

Get Admin Messages

### Example

* Api Key Authentication (APIKey):
* Bearer (JWT) Authentication (JWT):

```python
import api_bricks_stock_api_rest
from api_bricks_stock_api_rest.models.admin_admin_message_model import AdminAdminMessageModel
from api_bricks_stock_api_rest.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api-historical.stock.finfeedapi.com
# See configuration.py for a list of all supported configuration parameters.
configuration = api_bricks_stock_api_rest.Configuration(
    host = "https://api-historical.stock.finfeedapi.com"
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
configuration = api_bricks_stock_api_rest.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with api_bricks_stock_api_rest.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = api_bricks_stock_api_rest.NativeIEXApi(api_client)
    symbol = 'symbol_example' # str | The symbol identifier
    var_date = '2013-10-20T19:20:30+01:00' # datetime | Optional date in format YYYY-MM-DD (defaults to latest available data)

    try:
        # Get Admin Messages
        api_response = api_instance.v1_native_iex_admin_messages_symbol_get(symbol, var_date)
        print("The response of NativeIEXApi->v1_native_iex_admin_messages_symbol_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling NativeIEXApi->v1_native_iex_admin_messages_symbol_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **str**| The symbol identifier | 
 **var_date** | **datetime**| Optional date in format YYYY-MM-DD (defaults to latest available data) | 

### Return type

[**List[AdminAdminMessageModel]**](AdminAdminMessageModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_native_iex_admin_system_event_get**
> List[AdminSystemEventModel] v1_native_iex_admin_system_event_get(var_date)

Get System Events

### Example

* Api Key Authentication (APIKey):
* Bearer (JWT) Authentication (JWT):

```python
import api_bricks_stock_api_rest
from api_bricks_stock_api_rest.models.admin_system_event_model import AdminSystemEventModel
from api_bricks_stock_api_rest.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api-historical.stock.finfeedapi.com
# See configuration.py for a list of all supported configuration parameters.
configuration = api_bricks_stock_api_rest.Configuration(
    host = "https://api-historical.stock.finfeedapi.com"
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
configuration = api_bricks_stock_api_rest.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with api_bricks_stock_api_rest.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = api_bricks_stock_api_rest.NativeIEXApi(api_client)
    var_date = '2013-10-20T19:20:30+01:00' # datetime | Date in format YYYY-MM-DD

    try:
        # Get System Events
        api_response = api_instance.v1_native_iex_admin_system_event_get(var_date)
        print("The response of NativeIEXApi->v1_native_iex_admin_system_event_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling NativeIEXApi->v1_native_iex_admin_system_event_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **var_date** | **datetime**| Date in format YYYY-MM-DD | 

### Return type

[**List[AdminSystemEventModel]**](AdminSystemEventModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_native_iex_level1_quote_symbol_get**
> List[Level1QuoteUpdateModel] v1_native_iex_level1_quote_symbol_get(symbol, var_date)

Get Level-1 Quotes

### Example

* Api Key Authentication (APIKey):
* Bearer (JWT) Authentication (JWT):

```python
import api_bricks_stock_api_rest
from api_bricks_stock_api_rest.models.level1_quote_update_model import Level1QuoteUpdateModel
from api_bricks_stock_api_rest.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api-historical.stock.finfeedapi.com
# See configuration.py for a list of all supported configuration parameters.
configuration = api_bricks_stock_api_rest.Configuration(
    host = "https://api-historical.stock.finfeedapi.com"
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
configuration = api_bricks_stock_api_rest.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with api_bricks_stock_api_rest.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = api_bricks_stock_api_rest.NativeIEXApi(api_client)
    symbol = 'symbol_example' # str | The symbol identifier
    var_date = '2013-10-20T19:20:30+01:00' # datetime | Optional date in format YYYY-MM-DD (defaults to latest available data)

    try:
        # Get Level-1 Quotes
        api_response = api_instance.v1_native_iex_level1_quote_symbol_get(symbol, var_date)
        print("The response of NativeIEXApi->v1_native_iex_level1_quote_symbol_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling NativeIEXApi->v1_native_iex_level1_quote_symbol_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **str**| The symbol identifier | 
 **var_date** | **datetime**| Optional date in format YYYY-MM-DD (defaults to latest available data) | 

### Return type

[**List[Level1QuoteUpdateModel]**](Level1QuoteUpdateModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_native_iex_level2_price_level_update_symbol_get**
> List[Level2PriceLevelUpdateModel] v1_native_iex_level2_price_level_update_symbol_get(symbol, var_date)

Get Level-2 Price Level Book

### Example

* Api Key Authentication (APIKey):
* Bearer (JWT) Authentication (JWT):

```python
import api_bricks_stock_api_rest
from api_bricks_stock_api_rest.models.level2_price_level_update_model import Level2PriceLevelUpdateModel
from api_bricks_stock_api_rest.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api-historical.stock.finfeedapi.com
# See configuration.py for a list of all supported configuration parameters.
configuration = api_bricks_stock_api_rest.Configuration(
    host = "https://api-historical.stock.finfeedapi.com"
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
configuration = api_bricks_stock_api_rest.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with api_bricks_stock_api_rest.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = api_bricks_stock_api_rest.NativeIEXApi(api_client)
    symbol = 'symbol_example' # str | The symbol identifier
    var_date = '2013-10-20T19:20:30+01:00' # datetime | Optional date in format YYYY-MM-DD (defaults to latest available data)

    try:
        # Get Level-2 Price Level Book
        api_response = api_instance.v1_native_iex_level2_price_level_update_symbol_get(symbol, var_date)
        print("The response of NativeIEXApi->v1_native_iex_level2_price_level_update_symbol_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling NativeIEXApi->v1_native_iex_level2_price_level_update_symbol_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **str**| The symbol identifier | 
 **var_date** | **datetime**| Optional date in format YYYY-MM-DD (defaults to latest available data) | 

### Return type

[**List[Level2PriceLevelUpdateModel]**](Level2PriceLevelUpdateModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_native_iex_level3_order_book_symbol_get**
> List[Level3OrderBookModel] v1_native_iex_level3_order_book_symbol_get(symbol, var_date)

Get Level-3 Order Book

### Example

* Api Key Authentication (APIKey):
* Bearer (JWT) Authentication (JWT):

```python
import api_bricks_stock_api_rest
from api_bricks_stock_api_rest.models.level3_order_book_model import Level3OrderBookModel
from api_bricks_stock_api_rest.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api-historical.stock.finfeedapi.com
# See configuration.py for a list of all supported configuration parameters.
configuration = api_bricks_stock_api_rest.Configuration(
    host = "https://api-historical.stock.finfeedapi.com"
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
configuration = api_bricks_stock_api_rest.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with api_bricks_stock_api_rest.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = api_bricks_stock_api_rest.NativeIEXApi(api_client)
    symbol = 'symbol_example' # str | The symbol identifier
    var_date = '2013-10-20T19:20:30+01:00' # datetime | Optional date in format YYYY-MM-DD (defaults to latest available data)

    try:
        # Get Level-3 Order Book
        api_response = api_instance.v1_native_iex_level3_order_book_symbol_get(symbol, var_date)
        print("The response of NativeIEXApi->v1_native_iex_level3_order_book_symbol_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling NativeIEXApi->v1_native_iex_level3_order_book_symbol_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **str**| The symbol identifier | 
 **var_date** | **datetime**| Optional date in format YYYY-MM-DD (defaults to latest available data) | 

### Return type

[**List[Level3OrderBookModel]**](Level3OrderBookModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_native_iex_trade_symbol_get**
> List[TradeTradeModel] v1_native_iex_trade_symbol_get(symbol, var_date)

Get Trades

### Example

* Api Key Authentication (APIKey):
* Bearer (JWT) Authentication (JWT):

```python
import api_bricks_stock_api_rest
from api_bricks_stock_api_rest.models.trade_trade_model import TradeTradeModel
from api_bricks_stock_api_rest.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api-historical.stock.finfeedapi.com
# See configuration.py for a list of all supported configuration parameters.
configuration = api_bricks_stock_api_rest.Configuration(
    host = "https://api-historical.stock.finfeedapi.com"
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
configuration = api_bricks_stock_api_rest.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with api_bricks_stock_api_rest.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = api_bricks_stock_api_rest.NativeIEXApi(api_client)
    symbol = 'symbol_example' # str | The symbol identifier
    var_date = '2013-10-20T19:20:30+01:00' # datetime | Optional date in format YYYY-MM-DD (defaults to latest available data)

    try:
        # Get Trades
        api_response = api_instance.v1_native_iex_trade_symbol_get(symbol, var_date)
        print("The response of NativeIEXApi->v1_native_iex_trade_symbol_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling NativeIEXApi->v1_native_iex_trade_symbol_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **str**| The symbol identifier | 
 **var_date** | **datetime**| Optional date in format YYYY-MM-DD (defaults to latest available data) | 

### Return type

[**List[TradeTradeModel]**](TradeTradeModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

