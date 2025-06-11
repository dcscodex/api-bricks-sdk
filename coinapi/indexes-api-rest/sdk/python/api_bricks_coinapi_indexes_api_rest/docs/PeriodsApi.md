# api_bricks_coinapi_indexes_api_rest.PeriodsApi

All URIs are relative to *https://rest-api.indexes.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_metadata_periods_get**](PeriodsApi.md#v1_metadata_periods_get) | **GET** /v1/metadata/periods | List all periods


# **v1_metadata_periods_get**
> List[MetadataTimeseriesPeriod] v1_metadata_periods_get()

List all periods

Get full list of supported time periods
            
### Available periods
            
Time unit | Period identifiers
--------- | -----------
Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC
Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN
Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS
Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY
Month | 1MTH, 2MTH, 3MTH, 4MTH, 6MTH
Year | 1YRS, 2YRS, 3YRS, 4YRS, 5YRS
            
:::tip
You can assume that we will not remove any periods from this response, however, we may add new ones.
:::

### Example

* Api Key Authentication (APIKey):
* Api Key Authentication (JWT):

```python
import api_bricks_coinapi_indexes_api_rest
from api_bricks_coinapi_indexes_api_rest.models.metadata_timeseries_period import MetadataTimeseriesPeriod
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
    api_instance = api_bricks_coinapi_indexes_api_rest.PeriodsApi(api_client)

    try:
        # List all periods
        api_response = api_instance.v1_metadata_periods_get()
        print("The response of PeriodsApi->v1_metadata_periods_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PeriodsApi->v1_metadata_periods_get: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**List[MetadataTimeseriesPeriod]**](MetadataTimeseriesPeriod.md)

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

