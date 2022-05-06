# openapi_client.EndpointsApi

All URIs are relative to *https://ems-mgmt-sandbox.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**endpoints**](EndpointsApi.md#endpoints) | **GET** /v1/endpoints | Get API endpoints


# **endpoints**
> [AccountEndpoint] endpoints()

Get API endpoints

Get all API endpoints that the EMS API expose for your subscription.

### Example

* Api Key Authentication (APIKeyHeader):
* Api Key Authentication (APIKeyQueryParam):

```python
import time
import openapi_client
from openapi_client.api import endpoints_api
from openapi_client.model.account_endpoint import AccountEndpoint
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
    api_instance = endpoints_api.EndpointsApi(api_client)
    filter_exchange_id = [
        "filter_exchange_id_example",
    ] # [str] | Exchange id (optional)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        # Get API endpoints
        api_response = api_instance.endpoints(filter_exchange_id=filter_exchange_id)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling EndpointsApi->endpoints: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_exchange_id** | **[str]**| Exchange id | [optional]

### Return type

[**[AccountEndpoint]**](AccountEndpoint.md)

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

