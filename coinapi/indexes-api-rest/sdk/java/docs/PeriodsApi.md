# PeriodsApi

All URIs are relative to *https://rest-api.indexes.coinapi.io*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**v1MetadataPeriodsGet**](PeriodsApi.md#v1MetadataPeriodsGet) | **GET** /v1/metadata/periods | List all periods |


<a id="v1MetadataPeriodsGet"></a>
# **v1MetadataPeriodsGet**
> List&lt;MetadataTimeseriesPeriod&gt; v1MetadataPeriodsGet()

List all periods

Get full list of supported time periods                ### Available periods                Time unit | Period identifiers  --------- | -----------  Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC  Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN  Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS  Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY  Month | 1MTH, 2MTH, 3MTH, 4MTH, 6MTH  Year | 1YRS, 2YRS, 3YRS, 4YRS, 5YRS                :::tip  You can assume that we will not remove any periods from this response, however, we may add new ones.  :::

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.PeriodsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://rest-api.indexes.coinapi.io");
    
    // Configure API key authorization: ApiKey
    ApiKeyAuth ApiKey = (ApiKeyAuth) defaultClient.getAuthentication("ApiKey");
    ApiKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //ApiKey.setApiKeyPrefix("Token");

    PeriodsApi apiInstance = new PeriodsApi(defaultClient);
    try {
      List<MetadataTimeseriesPeriod> result = apiInstance.v1MetadataPeriodsGet();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PeriodsApi#v1MetadataPeriodsGet");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List&lt;MetadataTimeseriesPeriod&gt;**](MetadataTimeseriesPeriod.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

