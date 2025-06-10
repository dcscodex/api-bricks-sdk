# MetadataApi

All URIs are relative to *https://api-realtime.exrates.coinapi.io*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v1AssetsAssetIdGet**](MetadataApi.md#v1AssetsAssetIdGet) | **GET** /v1/assets/{asset_id} | List all assets by asset ID |
| [**v1AssetsGet**](MetadataApi.md#v1AssetsGet) | **GET** /v1/assets | List all assets |
| [**v1AssetsIconsSizeGet**](MetadataApi.md#v1AssetsIconsSizeGet) | **GET** /v1/assets/icons/{size} | List all asset icons |


<a id="v1AssetsAssetIdGet"></a>
# **v1AssetsAssetIdGet**
> kotlin.collections.List&lt;V1Asset&gt; v1AssetsAssetIdGet(assetId)

List all assets by asset ID

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = MetadataApi()
val assetId : kotlin.String = assetId_example // kotlin.String | The asset ID.
try {
    val result : kotlin.collections.List<V1Asset> = apiInstance.v1AssetsAssetIdGet(assetId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MetadataApi#v1AssetsAssetIdGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MetadataApi#v1AssetsAssetIdGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **assetId** | **kotlin.String**| The asset ID. | |

### Return type

[**kotlin.collections.List&lt;V1Asset&gt;**](V1Asset.md)

### Authorization


Configure APIKey:
    ApiClient.apiKey["Authorization"] = ""
    ApiClient.apiKeyPrefix["Authorization"] = ""
Configure JWT:
    ApiClient.apiKey["Authorization"] = ""
    ApiClient.apiKeyPrefix["Authorization"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

<a id="v1AssetsGet"></a>
# **v1AssetsGet**
> kotlin.collections.List&lt;V1Asset&gt; v1AssetsGet(filterAssetId)

List all assets

Retrieves all assets.              :::info Our asset identifiers are aligned with the ISO 4217 currency codes standard only for fiat money (government or law regulated currency). :::              :::info Properties of the output are providing aggregated information from across all symbols related to the specific asset. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source. :::

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = MetadataApi()
val filterAssetId : kotlin.String = filterAssetId_example // kotlin.String | Comma or semicolon delimited asset identifiers used to filter response. (optional, eg. `BTC;ETH`).
try {
    val result : kotlin.collections.List<V1Asset> = apiInstance.v1AssetsGet(filterAssetId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MetadataApi#v1AssetsGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MetadataApi#v1AssetsGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **filterAssetId** | **kotlin.String**| Comma or semicolon delimited asset identifiers used to filter response. (optional, eg. &#x60;BTC;ETH&#x60;). | [optional] |

### Return type

[**kotlin.collections.List&lt;V1Asset&gt;**](V1Asset.md)

### Authorization


Configure APIKey:
    ApiClient.apiKey["Authorization"] = ""
    ApiClient.apiKeyPrefix["Authorization"] = ""
Configure JWT:
    ApiClient.apiKey["Authorization"] = ""
    ApiClient.apiKeyPrefix["Authorization"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

<a id="v1AssetsIconsSizeGet"></a>
# **v1AssetsIconsSizeGet**
> kotlin.collections.List&lt;V1Icon&gt; v1AssetsIconsSizeGet(size)

List all asset icons

Gets the list of icons (of the given size) for all the assets.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = MetadataApi()
val size : kotlin.Int = 56 // kotlin.Int | The size of the icons.
try {
    val result : kotlin.collections.List<V1Icon> = apiInstance.v1AssetsIconsSizeGet(size)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MetadataApi#v1AssetsIconsSizeGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MetadataApi#v1AssetsIconsSizeGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **size** | **kotlin.Int**| The size of the icons. | |

### Return type

[**kotlin.collections.List&lt;V1Icon&gt;**](V1Icon.md)

### Authorization


Configure APIKey:
    ApiClient.apiKey["Authorization"] = ""
    ApiClient.apiKeyPrefix["Authorization"] = ""
Configure JWT:
    ApiClient.apiKey["Authorization"] = ""
    ApiClient.apiKeyPrefix["Authorization"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

