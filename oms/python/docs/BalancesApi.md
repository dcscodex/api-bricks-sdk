# openapi_client.BalancesApi

All URIs are relative to *http://localhost:3001*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_balances_get**](BalancesApi.md#v1_balances_get) | **GET** /v1/balances | Get balances


# **v1_balances_get**
> list[Balance] v1_balances_get(exchange_id=exchange_id)

Get balances

Returns all of your balances, including available balance.

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
    api_instance = openapi_client.BalancesApi(api_client)
    exchange_id = 'KRAKEN' # str | Exchange name (optional)

    try:
        # Get balances
        api_response = api_instance.v1_balances_get(exchange_id=exchange_id)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling BalancesApi->v1_balances_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **str**| Exchange name | [optional] 

### Return type

[**list[Balance]**](Balance.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Result |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

