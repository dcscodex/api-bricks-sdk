# openapi_client.ExchangeApi

All URIs are relative to *https://ems-mgmt-sandbox.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**exchange_login_require**](ExchangeApi.md#exchange_login_require) | **GET** /v1/exchanges | Get exchange configuration


# **exchange_login_require**
> [ExchangeLoginRequire] exchange_login_require()

Get exchange configuration

Get information about the required parameters or server site location of the exchanges supported in the EMS API.

### Example

* Api Key Authentication (APIKeyHeader):
* Api Key Authentication (APIKeyQueryParam):

```python
import time
import openapi_client
from openapi_client.api import exchange_api
from openapi_client.model.exchange_login_require import ExchangeLoginRequire
from pprint import pprint
# Defining the host is optional and defaults to https://ems-mgmt-sandbox.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://ems-mgmt-sandbox.coinapi.io"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: APIKeyHeader
configuration.api_key['APIKeyHeader'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['APIKeyHeader'] = 'Bearer'

# Configure API key authorization: APIKeyQueryParam
configuration.api_key['APIKeyQueryParam'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['APIKeyQueryParam'] = 'Bearer'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = exchange_api.ExchangeApi(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        # Get exchange configuration
        api_response = api_instance.exchange_login_require()
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling ExchangeApi->exchange_login_require: %s\n" % e)
```


### Parameters
This endpoint does not need any parameter.

### Return type

[**[ExchangeLoginRequire]**](ExchangeLoginRequire.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

