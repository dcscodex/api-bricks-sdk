# openapi_client.OrdersApi

All URIs are relative to *http://localhost:3001*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_orders_cancel_all_post**](OrdersApi.md#v1_orders_cancel_all_post) | **POST** /v1/orders/cancel/all | Cancel all order
[**v1_orders_cancel_post**](OrdersApi.md#v1_orders_cancel_post) | **POST** /v1/orders/cancel | Cancel order
[**v1_orders_get**](OrdersApi.md#v1_orders_get) | **GET** /v1/orders | Get orders
[**v1_orders_post**](OrdersApi.md#v1_orders_post) | **POST** /v1/orders | Create new order


# **v1_orders_cancel_all_post**
> MessagesOk v1_orders_cancel_all_post(cancel_all_order)

Cancel all order

Cancel all existing order.

### Example

```python
from __future__ import print_function
import time
import openapi_client
from openapi_client.rest import ApiException
from pprint import pprint
# Defining the host is optional and defaults to http://localhost:3001
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "http://localhost:3001"
)


# Enter a context with an instance of the API client
with openapi_client.ApiClient() as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.OrdersApi(api_client)
    cancel_all_order = openapi_client.CancelAllOrder() # CancelAllOrder | 

    try:
        # Cancel all order
        api_response = api_instance.v1_orders_cancel_all_post(cancel_all_order)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling OrdersApi->v1_orders_cancel_all_post: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cancel_all_order** | [**CancelAllOrder**](CancelAllOrder.md)|  | 

### Return type

[**MessagesOk**](MessagesOk.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Result |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_orders_cancel_post**
> OrderLive v1_orders_cancel_post(cancel_order)

Cancel order

Cancel an existing order, can be used to cancel margin, exchange, and derivative orders. You can cancel the order by the internal order ID or exchange order ID.

### Example

```python
from __future__ import print_function
import time
import openapi_client
from openapi_client.rest import ApiException
from pprint import pprint
# Defining the host is optional and defaults to http://localhost:3001
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "http://localhost:3001"
)


# Enter a context with an instance of the API client
with openapi_client.ApiClient() as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.OrdersApi(api_client)
    cancel_order = openapi_client.CancelOrder() # CancelOrder | 

    try:
        # Cancel order
        api_response = api_instance.v1_orders_cancel_post(cancel_order)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling OrdersApi->v1_orders_cancel_post: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cancel_order** | [**CancelOrder**](CancelOrder.md)|  | 

### Return type

[**OrderLive**](OrderLive.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, appliction/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Canceled order |  -  |
**400** | Validation errors |  -  |
**490** | Exchange not registered |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_orders_get**
> list[Order] v1_orders_get(exchange_id=exchange_id)

Get orders

List your current open orders.

### Example

```python
from __future__ import print_function
import time
import openapi_client
from openapi_client.rest import ApiException
from pprint import pprint
# Defining the host is optional and defaults to http://localhost:3001
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "http://localhost:3001"
)


# Enter a context with an instance of the API client
with openapi_client.ApiClient() as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.OrdersApi(api_client)
    exchange_id = 'KRAKEN' # str | Exchange name (optional)

    try:
        # Get orders
        api_response = api_instance.v1_orders_get(exchange_id=exchange_id)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling OrdersApi->v1_orders_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **str**| Exchange name | [optional] 

### Return type

[**list[Order]**](Order.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Ok |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_orders_post**
> OrderLive v1_orders_post(new_order)

Create new order

You can place two types of orders: limit and market. Orders can only be placed if your account has sufficient funds.

### Example

```python
from __future__ import print_function
import time
import openapi_client
from openapi_client.rest import ApiException
from pprint import pprint
# Defining the host is optional and defaults to http://localhost:3001
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "http://localhost:3001"
)


# Enter a context with an instance of the API client
with openapi_client.ApiClient() as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.OrdersApi(api_client)
    new_order = openapi_client.NewOrder() # NewOrder | 

    try:
        # Create new order
        api_response = api_instance.v1_orders_post(new_order)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling OrdersApi->v1_orders_post: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **new_order** | [**NewOrder**](NewOrder.md)|  | 

### Return type

[**OrderLive**](OrderLive.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, appliction/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Created |  -  |
**400** | Validation errors |  -  |
**490** | Exchange not registered |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

