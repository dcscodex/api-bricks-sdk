# api_bricks_coinapi_exchange_rates_api_rest_realtime.MetadataApi

All URIs are relative to *https://api-realtime.exrates.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_assets_asset_id_get**](MetadataApi.md#v1_assets_asset_id_get) | **GET** /v1/assets/{asset_id} | List all assets by asset ID
[**v1_assets_get**](MetadataApi.md#v1_assets_get) | **GET** /v1/assets | List all assets
[**v1_assets_icons_size_get**](MetadataApi.md#v1_assets_icons_size_get) | **GET** /v1/assets/icons/{size} | List all asset icons


# **v1_assets_asset_id_get**
> List[V1Asset] v1_assets_asset_id_get(asset_id)

List all assets by asset ID

### Example

* Api Key Authentication (APIKey):

```python
import api_bricks_coinapi_exchange_rates_api_rest_realtime
from api_bricks_coinapi_exchange_rates_api_rest_realtime.models.v1_asset import V1Asset
from api_bricks_coinapi_exchange_rates_api_rest_realtime.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api-realtime.exrates.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = api_bricks_coinapi_exchange_rates_api_rest_realtime.Configuration(
    host = "https://api-realtime.exrates.coinapi.io"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: APIKey
configuration.api_key['APIKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['APIKey'] = 'Bearer'

# Enter a context with an instance of the API client
with api_bricks_coinapi_exchange_rates_api_rest_realtime.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = api_bricks_coinapi_exchange_rates_api_rest_realtime.MetadataApi(api_client)
    asset_id = 'asset_id_example' # str | The asset ID.

    try:
        # List all assets by asset ID
        api_response = api_instance.v1_assets_asset_id_get(asset_id)
        print("The response of MetadataApi->v1_assets_asset_id_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MetadataApi->v1_assets_asset_id_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asset_id** | **str**| The asset ID. | 

### Return type

[**List[V1Asset]**](V1Asset.md)

### Authorization

[APIKey](../README.md#APIKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_assets_get**
> List[V1Asset] v1_assets_get(filter_asset_id=filter_asset_id)

List all assets

Retrieves all assets.
            
:::info
Our asset identifiers are aligned with the ISO 4217 currency codes standard only for fiat money (government or law regulated currency).
:::
            
:::info
Properties of the output are providing aggregated information from across all symbols related to the specific asset. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source.
:::

### Example

* Api Key Authentication (APIKey):

```python
import api_bricks_coinapi_exchange_rates_api_rest_realtime
from api_bricks_coinapi_exchange_rates_api_rest_realtime.models.v1_asset import V1Asset
from api_bricks_coinapi_exchange_rates_api_rest_realtime.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api-realtime.exrates.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = api_bricks_coinapi_exchange_rates_api_rest_realtime.Configuration(
    host = "https://api-realtime.exrates.coinapi.io"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: APIKey
configuration.api_key['APIKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['APIKey'] = 'Bearer'

# Enter a context with an instance of the API client
with api_bricks_coinapi_exchange_rates_api_rest_realtime.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = api_bricks_coinapi_exchange_rates_api_rest_realtime.MetadataApi(api_client)
    filter_asset_id = 'filter_asset_id_example' # str | Comma or semicolon delimited asset identifiers used to filter response. (optional, eg. `BTC;ETH`). (optional)

    try:
        # List all assets
        api_response = api_instance.v1_assets_get(filter_asset_id=filter_asset_id)
        print("The response of MetadataApi->v1_assets_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MetadataApi->v1_assets_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_asset_id** | **str**| Comma or semicolon delimited asset identifiers used to filter response. (optional, eg. &#x60;BTC;ETH&#x60;). | [optional] 

### Return type

[**List[V1Asset]**](V1Asset.md)

### Authorization

[APIKey](../README.md#APIKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_assets_icons_size_get**
> List[V1Icon] v1_assets_icons_size_get(size)

List all asset icons

Gets the list of icons (of the given size) for all the assets.

### Example

* Api Key Authentication (APIKey):

```python
import api_bricks_coinapi_exchange_rates_api_rest_realtime
from api_bricks_coinapi_exchange_rates_api_rest_realtime.models.v1_icon import V1Icon
from api_bricks_coinapi_exchange_rates_api_rest_realtime.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api-realtime.exrates.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = api_bricks_coinapi_exchange_rates_api_rest_realtime.Configuration(
    host = "https://api-realtime.exrates.coinapi.io"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: APIKey
configuration.api_key['APIKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['APIKey'] = 'Bearer'

# Enter a context with an instance of the API client
with api_bricks_coinapi_exchange_rates_api_rest_realtime.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = api_bricks_coinapi_exchange_rates_api_rest_realtime.MetadataApi(api_client)
    size = 56 # int | The size of the icons.

    try:
        # List all asset icons
        api_response = api_instance.v1_assets_icons_size_get(size)
        print("The response of MetadataApi->v1_assets_icons_size_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MetadataApi->v1_assets_icons_size_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The size of the icons. | 

### Return type

[**List[V1Icon]**](V1Icon.md)

### Authorization

[APIKey](../README.md#APIKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

