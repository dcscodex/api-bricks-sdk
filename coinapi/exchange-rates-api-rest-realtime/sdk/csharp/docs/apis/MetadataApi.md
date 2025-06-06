# APIBricks.CoinAPI.ExchangeRatesAPI.Realtime.REST.V1.Api.MetadataApi

All URIs are relative to *https://api-realtime.exrates.coinapi.io*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**V1AssetsAssetIdGet**](MetadataApi.md#v1assetsassetidget) | **GET** /v1/assets/{asset_id} | List all assets by asset ID |
| [**V1AssetsGet**](MetadataApi.md#v1assetsget) | **GET** /v1/assets | List all assets |
| [**V1AssetsIconsSizeGet**](MetadataApi.md#v1assetsiconssizeget) | **GET** /v1/assets/icons/{size} | List all asset icons |

<a id="v1assetsassetidget"></a>
# **V1AssetsAssetIdGet**
> List&lt;V1Asset&gt; V1AssetsAssetIdGet (string assetId)

List all assets by asset ID

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.CoinAPI.ExchangeRatesAPI.Realtime.REST.V1.Api;
using APIBricks.CoinAPI.ExchangeRatesAPI.Realtime.REST.V1.Client;
using APIBricks.CoinAPI.ExchangeRatesAPI.Realtime.REST.V1.Model;

namespace Example
{
    public class V1AssetsAssetIdGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api-realtime.exrates.coinapi.io";
            // Configure API key authorization: APIKey
            config.AddApiKey("Authorization", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Authorization", "Bearer");

            var apiInstance = new MetadataApi(config);
            var assetId = "assetId_example";  // string | The asset ID.

            try
            {
                // List all assets by asset ID
                List<V1Asset> result = apiInstance.V1AssetsAssetIdGet(assetId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling MetadataApi.V1AssetsAssetIdGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1AssetsAssetIdGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // List all assets by asset ID
    ApiResponse<List<V1Asset>> response = apiInstance.V1AssetsAssetIdGetWithHttpInfo(assetId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling MetadataApi.V1AssetsAssetIdGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **assetId** | **string** | The asset ID. |  |

### Return type

[**List&lt;V1Asset&gt;**](V1Asset.md)

### Authorization

[APIKey](../README.md#APIKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="v1assetsget"></a>
# **V1AssetsGet**
> List&lt;V1Asset&gt; V1AssetsGet (string filterAssetId = null)

List all assets

Retrieves all assets.                :::info  Our asset identifiers are aligned with the ISO 4217 currency codes standard only for fiat money (government or law regulated currency).  :::                :::info  Properties of the output are providing aggregated information from across all symbols related to the specific asset. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source.  :::

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.CoinAPI.ExchangeRatesAPI.Realtime.REST.V1.Api;
using APIBricks.CoinAPI.ExchangeRatesAPI.Realtime.REST.V1.Client;
using APIBricks.CoinAPI.ExchangeRatesAPI.Realtime.REST.V1.Model;

namespace Example
{
    public class V1AssetsGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api-realtime.exrates.coinapi.io";
            // Configure API key authorization: APIKey
            config.AddApiKey("Authorization", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Authorization", "Bearer");

            var apiInstance = new MetadataApi(config);
            var filterAssetId = "filterAssetId_example";  // string | Comma or semicolon delimited asset identifiers used to filter response. (optional, eg. `BTC;ETH`). (optional) 

            try
            {
                // List all assets
                List<V1Asset> result = apiInstance.V1AssetsGet(filterAssetId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling MetadataApi.V1AssetsGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1AssetsGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // List all assets
    ApiResponse<List<V1Asset>> response = apiInstance.V1AssetsGetWithHttpInfo(filterAssetId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling MetadataApi.V1AssetsGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **filterAssetId** | **string** | Comma or semicolon delimited asset identifiers used to filter response. (optional, eg. &#x60;BTC;ETH&#x60;). | [optional]  |

### Return type

[**List&lt;V1Asset&gt;**](V1Asset.md)

### Authorization

[APIKey](../README.md#APIKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="v1assetsiconssizeget"></a>
# **V1AssetsIconsSizeGet**
> List&lt;V1Icon&gt; V1AssetsIconsSizeGet (int size)

List all asset icons

Gets the list of icons (of the given size) for all the assets.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.CoinAPI.ExchangeRatesAPI.Realtime.REST.V1.Api;
using APIBricks.CoinAPI.ExchangeRatesAPI.Realtime.REST.V1.Client;
using APIBricks.CoinAPI.ExchangeRatesAPI.Realtime.REST.V1.Model;

namespace Example
{
    public class V1AssetsIconsSizeGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api-realtime.exrates.coinapi.io";
            // Configure API key authorization: APIKey
            config.AddApiKey("Authorization", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Authorization", "Bearer");

            var apiInstance = new MetadataApi(config);
            var size = 56;  // int | The size of the icons.

            try
            {
                // List all asset icons
                List<V1Icon> result = apiInstance.V1AssetsIconsSizeGet(size);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling MetadataApi.V1AssetsIconsSizeGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1AssetsIconsSizeGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // List all asset icons
    ApiResponse<List<V1Icon>> response = apiInstance.V1AssetsIconsSizeGetWithHttpInfo(size);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling MetadataApi.V1AssetsIconsSizeGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **size** | **int** | The size of the icons. |  |

### Return type

[**List&lt;V1Icon&gt;**](V1Icon.md)

### Authorization

[APIKey](../README.md#APIKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

