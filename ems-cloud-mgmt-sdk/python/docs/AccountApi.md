# openapi_client.AccountApi

All URIs are relative to *https://ems-mgmt-sandbox.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_account**](AccountApi.md#delete_account) | **DELETE** /v1/accounts | Delete account
[**delete_account_all**](AccountApi.md#delete_account_all) | **DELETE** /v1/accounts/all | Delete all accounts
[**get_account**](AccountApi.md#get_account) | **GET** /v1/accounts | Get accounts
[**persist_account**](AccountApi.md#persist_account) | **POST** /v1/accounts | Add or update account


# **delete_account**
> delete_account(exchange_id)

Delete account

Delete specific exchange account maintained by the EMS API for your subscription.

### Example

* Api Key Authentication (APIKeyHeader):
* Api Key Authentication (APIKeyQueryParam):

```python
import time
import openapi_client
from openapi_client.api import account_api
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
    api_instance = account_api.AccountApi(api_client)
    exchange_id = [
        "exchange_id_example",
    ] # [str] | Exchange identifier of the account to delete

    # example passing only required values which don't have defaults set
    try:
        # Delete account
        api_instance.delete_account(exchange_id)
    except openapi_client.ApiException as e:
        print("Exception when calling AccountApi->delete_account: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **[str]**| Exchange identifier of the account to delete |

### Return type

void (empty response body)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**404** | Exchange account not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_account_all**
> delete_account_all()

Delete all accounts

Delete all exchange accounts maintained by the EMS API for your subscription.

### Example

* Api Key Authentication (APIKeyHeader):
* Api Key Authentication (APIKeyQueryParam):

```python
import time
import openapi_client
from openapi_client.api import account_api
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
    api_instance = account_api.AccountApi(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        # Delete all accounts
        api_instance.delete_account_all()
    except openapi_client.ApiException as e:
        print("Exception when calling AccountApi->delete_account_all: %s\n" % e)
```


### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_account**
> [GetAccount] get_account()

Get accounts

Get all accounts maintained for your subscription in the EMS API.

### Example

* Api Key Authentication (APIKeyHeader):
* Api Key Authentication (APIKeyQueryParam):

```python
import time
import openapi_client
from openapi_client.api import account_api
from openapi_client.model.get_account import GetAccount
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
    api_instance = account_api.AccountApi(api_client)
    filter_exchange_id = [
        "filter_exchange_id_example",
    ] # [str] | Exchange id of the specific account to provide single account instead of the list of all accounts (optional)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        # Get accounts
        api_response = api_instance.get_account(filter_exchange_id=filter_exchange_id)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling AccountApi->get_account: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_exchange_id** | **[str]**| Exchange id of the specific account to provide single account instead of the list of all accounts | [optional]

### Return type

[**[GetAccount]**](GetAccount.md)

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

# **persist_account**
> persist_account(body)

Add or update account

Add new or update existing exchange account for your subscription in the EMS API.

### Example

* Api Key Authentication (APIKeyHeader):
* Api Key Authentication (APIKeyQueryParam):

```python
import time
import openapi_client
from openapi_client.api import account_api
from openapi_client.model.account_data import AccountData
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
    api_instance = account_api.AccountApi(api_client)
    body = AccountData(
        exchange_id="exchange_id_example",
        parameters=[
            KeyValue(
                key="key_example",
                value="value_example",
            ),
        ],
    ) # AccountData | Exchange account object that needs to be add/update to the EMS

    # example passing only required values which don't have defaults set
    try:
        # Add or update account
        api_instance.persist_account(body)
    except openapi_client.ApiException as e:
        print("Exception when calling AccountApi->persist_account: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AccountData**](AccountData.md)| Exchange account object that needs to be add/update to the EMS |

### Return type

void (empty response body)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**400** | Invalid exchange id |  -  |
**405** | Validation exception |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

