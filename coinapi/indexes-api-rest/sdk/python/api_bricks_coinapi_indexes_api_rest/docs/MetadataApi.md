# api_bricks_coinapi_indexes_api_rest.MetadataApi

All URIs are relative to *https://rest-api.indexes.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**api_metadata_exchanges_exchange_id_get**](MetadataApi.md#api_metadata_exchanges_exchange_id_get) | **GET** /api/metadata/exchanges/{exchange_id} | List all exchanges by exchange_id
[**api_metadata_exchanges_get**](MetadataApi.md#api_metadata_exchanges_get) | **GET** /api/metadata/exchanges | List all exchanges


# **api_metadata_exchanges_exchange_id_get**
> List[MetadataExchange] api_metadata_exchanges_exchange_id_get(exchange_id)

List all exchanges by exchange_id

### Example

* Api Key Authentication (APIKey):
* Api Key Authentication (JWT):

```python
import api_bricks_coinapi_indexes_api_rest
from api_bricks_coinapi_indexes_api_rest.models.metadata_exchange import MetadataExchange
from api_bricks_coinapi_indexes_api_rest.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://rest-api.indexes.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = api_bricks_coinapi_indexes_api_rest.Configuration(
    host = "https://rest-api.indexes.coinapi.io"
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
with api_bricks_coinapi_indexes_api_rest.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = api_bricks_coinapi_indexes_api_rest.MetadataApi(api_client)
    exchange_id = 'exchange_id_example' # str | The ID of the exchange.

    try:
        # List all exchanges by exchange_id
        api_response = api_instance.api_metadata_exchanges_exchange_id_get(exchange_id)
        print("The response of MetadataApi->api_metadata_exchanges_exchange_id_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MetadataApi->api_metadata_exchanges_exchange_id_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **str**| The ID of the exchange. | 

### Return type

[**List[MetadataExchange]**](MetadataExchange.md)

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

# **api_metadata_exchanges_get**
> List[MetadataExchange] api_metadata_exchanges_get(filter_exchange_id=filter_exchange_id)

List all exchanges

Get a detailed list of exchanges provided by the system.
            
:::info
Properties of the output are providing aggregated information from across all symbols related to the specific exchange. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source.
:::

### Example

* Api Key Authentication (APIKey):
* Api Key Authentication (JWT):

```python
import api_bricks_coinapi_indexes_api_rest
from api_bricks_coinapi_indexes_api_rest.models.metadata_exchange import MetadataExchange
from api_bricks_coinapi_indexes_api_rest.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://rest-api.indexes.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = api_bricks_coinapi_indexes_api_rest.Configuration(
    host = "https://rest-api.indexes.coinapi.io"
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
with api_bricks_coinapi_indexes_api_rest.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = api_bricks_coinapi_indexes_api_rest.MetadataApi(api_client)
    filter_exchange_id = 'filter_exchange_id_example' # str | Comma or semicolon delimited exchange identifiers used to filter response. (optional, eg. `BITSTAMP;GEMINI`) (optional)

    try:
        # List all exchanges
        api_response = api_instance.api_metadata_exchanges_get(filter_exchange_id=filter_exchange_id)
        print("The response of MetadataApi->api_metadata_exchanges_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MetadataApi->api_metadata_exchanges_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_exchange_id** | **str**| Comma or semicolon delimited exchange identifiers used to filter response. (optional, eg. &#x60;BITSTAMP;GEMINI&#x60;) | [optional] 

### Return type

[**List[MetadataExchange]**](MetadataExchange.md)

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

