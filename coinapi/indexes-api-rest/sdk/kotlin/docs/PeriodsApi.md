# PeriodsApi

All URIs are relative to *https://rest-api.indexes.coinapi.io*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v1MetadataPeriodsGet**](PeriodsApi.md#v1MetadataPeriodsGet) | **GET** /v1/metadata/periods | List all periods |


<a id="v1MetadataPeriodsGet"></a>
# **v1MetadataPeriodsGet**
> kotlin.collections.List&lt;MetadataTimeseriesPeriod&gt; v1MetadataPeriodsGet()

List all periods

Get full list of supported time periods                ### Available periods                Time unit | Period identifiers  --------- | -----------  Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC  Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN  Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS  Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY  Month | 1MTH, 2MTH, 3MTH, 4MTH, 6MTH  Year | 1YRS, 2YRS, 3YRS, 4YRS, 5YRS                :::tip  You can assume that we will not remove any periods from this response, however, we may add new ones.  :::

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = PeriodsApi()
try {
    val result : kotlin.collections.List<MetadataTimeseriesPeriod> = apiInstance.v1MetadataPeriodsGet()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling PeriodsApi#v1MetadataPeriodsGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling PeriodsApi#v1MetadataPeriodsGet")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**kotlin.collections.List&lt;MetadataTimeseriesPeriod&gt;**](MetadataTimeseriesPeriod.md)

### Authorization


Configure ApiKey:
    ApiClient.apiKey["X-CoinAPI-Key"] = ""
    ApiClient.apiKeyPrefix["X-CoinAPI-Key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

