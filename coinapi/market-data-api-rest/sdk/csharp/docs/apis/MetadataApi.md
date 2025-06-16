# APIBricks.CoinAPI.MarketDataAPI.REST.V1.Api.MetadataApi

All URIs are relative to *https://rest.coinapi.io*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**V1AssetsAssetIdGet**](MetadataApi.md#v1assetsassetidget) | **GET** /v1/assets/{asset_id} | List all assets by asset ID |
| [**V1AssetsGet**](MetadataApi.md#v1assetsget) | **GET** /v1/assets | List all assets |
| [**V1AssetsIconsSizeGet**](MetadataApi.md#v1assetsiconssizeget) | **GET** /v1/assets/icons/{size} | List all asset icons |
| [**V1ChainsChainIdGet**](MetadataApi.md#v1chainschainidget) | **GET** /v1/chains/{chain_id} | List all chains by chain ID |
| [**V1ChainsGet**](MetadataApi.md#v1chainsget) | **GET** /v1/chains | List all blockchain chains |
| [**V1ExchangesExchangeIdGet**](MetadataApi.md#v1exchangesexchangeidget) | **GET** /v1/exchanges/{exchange_id} | List all exchanges by exchange_id |
| [**V1ExchangesGet**](MetadataApi.md#v1exchangesget) | **GET** /v1/exchanges | List all exchanges |
| [**V1ExchangesIconsSizeGet**](MetadataApi.md#v1exchangesiconssizeget) | **GET** /v1/exchanges/icons/{size} | List of icons for the exchanges |
| [**V1SymbolsExchangeIdGet**](MetadataApi.md#v1symbolsexchangeidget) | **GET** /v1/symbols/{exchange_id} | List of symbols for the exchange |
| [**V1SymbolsGet**](MetadataApi.md#v1symbolsget) | **GET** /v1/symbols | List all symbols |
| [**V1SymbolsMapExchangeIdGet**](MetadataApi.md#v1symbolsmapexchangeidget) | **GET** /v1/symbols/map/{exchange_id} | List symbol mapping for the exchange |

<a id="v1assetsassetidget"></a>
# **V1AssetsAssetIdGet**
> List&lt;V1Asset&gt; V1AssetsAssetIdGet (string assetId)

List all assets by asset ID

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Api;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Client;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Model;

namespace Example
{
    public class V1AssetsAssetIdGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://rest.coinapi.io";
            // Configure API key authorization: APIKey
            config.AddApiKey("Authorization", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Authorization", "Bearer");
            // Configure Bearer token for authorization: JWT
            config.AccessToken = "YOUR_BEARER_TOKEN";

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

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

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

Retrieves all assets.              :::info Our asset identifiers are aligned with the ISO 4217 currency codes standard only for fiat money (government or law regulated currency). :::              :::info Properties of the output are providing aggregated information from across all symbols related to the specific asset. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source. :::

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Api;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Client;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Model;

namespace Example
{
    public class V1AssetsGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://rest.coinapi.io";
            // Configure API key authorization: APIKey
            config.AddApiKey("Authorization", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Authorization", "Bearer");
            // Configure Bearer token for authorization: JWT
            config.AccessToken = "YOUR_BEARER_TOKEN";

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

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

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
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Api;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Client;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Model;

namespace Example
{
    public class V1AssetsIconsSizeGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://rest.coinapi.io";
            // Configure API key authorization: APIKey
            config.AddApiKey("Authorization", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Authorization", "Bearer");
            // Configure Bearer token for authorization: JWT
            config.AccessToken = "YOUR_BEARER_TOKEN";

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

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="v1chainschainidget"></a>
# **V1ChainsChainIdGet**
> List&lt;V1Chain&gt; V1ChainsChainIdGet (string chainId)

List all chains by chain ID

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Api;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Client;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Model;

namespace Example
{
    public class V1ChainsChainIdGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://rest.coinapi.io";
            // Configure API key authorization: APIKey
            config.AddApiKey("Authorization", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Authorization", "Bearer");
            // Configure Bearer token for authorization: JWT
            config.AccessToken = "YOUR_BEARER_TOKEN";

            var apiInstance = new MetadataApi(config);
            var chainId = "chainId_example";  // string | The chain ID.

            try
            {
                // List all chains by chain ID
                List<V1Chain> result = apiInstance.V1ChainsChainIdGet(chainId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling MetadataApi.V1ChainsChainIdGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1ChainsChainIdGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // List all chains by chain ID
    ApiResponse<List<V1Chain>> response = apiInstance.V1ChainsChainIdGetWithHttpInfo(chainId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling MetadataApi.V1ChainsChainIdGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **chainId** | **string** | The chain ID. |  |

### Return type

[**List&lt;V1Chain&gt;**](V1Chain.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="v1chainsget"></a>
# **V1ChainsGet**
> List&lt;V1Chain&gt; V1ChainsGet (string filterChainId = null)

List all blockchain chains

Retrieves all blockchain chains supported by the system.              :::info Properties of the output are providing aggregated information from across all symbols related to the specific chain. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source. :::

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Api;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Client;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Model;

namespace Example
{
    public class V1ChainsGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://rest.coinapi.io";
            // Configure API key authorization: APIKey
            config.AddApiKey("Authorization", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Authorization", "Bearer");
            // Configure Bearer token for authorization: JWT
            config.AccessToken = "YOUR_BEARER_TOKEN";

            var apiInstance = new MetadataApi(config);
            var filterChainId = "filterChainId_example";  // string | Comma or semicolon delimited chain identifiers used to filter response. (optional, eg. `ETHEREUM;ARBITRUM`). (optional) 

            try
            {
                // List all blockchain chains
                List<V1Chain> result = apiInstance.V1ChainsGet(filterChainId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling MetadataApi.V1ChainsGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1ChainsGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // List all blockchain chains
    ApiResponse<List<V1Chain>> response = apiInstance.V1ChainsGetWithHttpInfo(filterChainId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling MetadataApi.V1ChainsGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **filterChainId** | **string** | Comma or semicolon delimited chain identifiers used to filter response. (optional, eg. &#x60;ETHEREUM;ARBITRUM&#x60;). | [optional]  |

### Return type

[**List&lt;V1Chain&gt;**](V1Chain.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="v1exchangesexchangeidget"></a>
# **V1ExchangesExchangeIdGet**
> List&lt;V1Exchange&gt; V1ExchangesExchangeIdGet (string exchangeId)

List all exchanges by exchange_id

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Api;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Client;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Model;

namespace Example
{
    public class V1ExchangesExchangeIdGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://rest.coinapi.io";
            // Configure API key authorization: APIKey
            config.AddApiKey("Authorization", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Authorization", "Bearer");
            // Configure Bearer token for authorization: JWT
            config.AccessToken = "YOUR_BEARER_TOKEN";

            var apiInstance = new MetadataApi(config);
            var exchangeId = "exchangeId_example";  // string | The ID of the exchange.

            try
            {
                // List all exchanges by exchange_id
                List<V1Exchange> result = apiInstance.V1ExchangesExchangeIdGet(exchangeId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling MetadataApi.V1ExchangesExchangeIdGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1ExchangesExchangeIdGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // List all exchanges by exchange_id
    ApiResponse<List<V1Exchange>> response = apiInstance.V1ExchangesExchangeIdGetWithHttpInfo(exchangeId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling MetadataApi.V1ExchangesExchangeIdGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **exchangeId** | **string** | The ID of the exchange. |  |

### Return type

[**List&lt;V1Exchange&gt;**](V1Exchange.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="v1exchangesget"></a>
# **V1ExchangesGet**
> List&lt;V1Exchange&gt; V1ExchangesGet (string filterExchangeId = null)

List all exchanges

Get a detailed list of exchanges provided by the system.              :::info Properties of the output are providing aggregated information from across all symbols related to the specific exchange. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source. :::

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Api;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Client;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Model;

namespace Example
{
    public class V1ExchangesGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://rest.coinapi.io";
            // Configure API key authorization: APIKey
            config.AddApiKey("Authorization", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Authorization", "Bearer");
            // Configure Bearer token for authorization: JWT
            config.AccessToken = "YOUR_BEARER_TOKEN";

            var apiInstance = new MetadataApi(config);
            var filterExchangeId = "filterExchangeId_example";  // string | Comma or semicolon delimited exchange identifiers used to filter response. (optional, eg. `BITSTAMP;GEMINI`) (optional) 

            try
            {
                // List all exchanges
                List<V1Exchange> result = apiInstance.V1ExchangesGet(filterExchangeId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling MetadataApi.V1ExchangesGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1ExchangesGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // List all exchanges
    ApiResponse<List<V1Exchange>> response = apiInstance.V1ExchangesGetWithHttpInfo(filterExchangeId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling MetadataApi.V1ExchangesGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **filterExchangeId** | **string** | Comma or semicolon delimited exchange identifiers used to filter response. (optional, eg. &#x60;BITSTAMP;GEMINI&#x60;) | [optional]  |

### Return type

[**List&lt;V1Exchange&gt;**](V1Exchange.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="v1exchangesiconssizeget"></a>
# **V1ExchangesIconsSizeGet**
> List&lt;V1Icon&gt; V1ExchangesIconsSizeGet (int size)

List of icons for the exchanges

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Api;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Client;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Model;

namespace Example
{
    public class V1ExchangesIconsSizeGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://rest.coinapi.io";
            // Configure API key authorization: APIKey
            config.AddApiKey("Authorization", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Authorization", "Bearer");
            // Configure Bearer token for authorization: JWT
            config.AccessToken = "YOUR_BEARER_TOKEN";

            var apiInstance = new MetadataApi(config);
            var size = 56;  // int | The size of the icons.

            try
            {
                // List of icons for the exchanges
                List<V1Icon> result = apiInstance.V1ExchangesIconsSizeGet(size);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling MetadataApi.V1ExchangesIconsSizeGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1ExchangesIconsSizeGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // List of icons for the exchanges
    ApiResponse<List<V1Icon>> response = apiInstance.V1ExchangesIconsSizeGetWithHttpInfo(size);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling MetadataApi.V1ExchangesIconsSizeGetWithHttpInfo: " + e.Message);
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

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="v1symbolsexchangeidget"></a>
# **V1SymbolsExchangeIdGet**
> List&lt;V1Symbol&gt; V1SymbolsExchangeIdGet (string exchangeId, string filterSymbolId = null, string filterAssetId = null)

List of symbols for the exchange

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Api;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Client;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Model;

namespace Example
{
    public class V1SymbolsExchangeIdGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://rest.coinapi.io";
            // Configure API key authorization: APIKey
            config.AddApiKey("Authorization", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Authorization", "Bearer");
            // Configure Bearer token for authorization: JWT
            config.AccessToken = "YOUR_BEARER_TOKEN";

            var apiInstance = new MetadataApi(config);
            var exchangeId = "exchangeId_example";  // string | The ID of the exchange (from the Metadata -> Exchanges)
            var filterSymbolId = "filterSymbolId_example";  // string | The filter for symbol ID. (optional) 
            var filterAssetId = "filterAssetId_example";  // string | The filter for asset ID. (optional) 

            try
            {
                // List of symbols for the exchange
                List<V1Symbol> result = apiInstance.V1SymbolsExchangeIdGet(exchangeId, filterSymbolId, filterAssetId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling MetadataApi.V1SymbolsExchangeIdGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1SymbolsExchangeIdGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // List of symbols for the exchange
    ApiResponse<List<V1Symbol>> response = apiInstance.V1SymbolsExchangeIdGetWithHttpInfo(exchangeId, filterSymbolId, filterAssetId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling MetadataApi.V1SymbolsExchangeIdGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **exchangeId** | **string** | The ID of the exchange (from the Metadata -&gt; Exchanges) |  |
| **filterSymbolId** | **string** | The filter for symbol ID. | [optional]  |
| **filterAssetId** | **string** | The filter for asset ID. | [optional]  |

### Return type

[**List&lt;V1Symbol&gt;**](V1Symbol.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="v1symbolsget"></a>
# **V1SymbolsGet**
> List&lt;V1Symbol&gt; V1SymbolsGet (string filterSymbolId = null, string filterExchangeId = null, string filterAssetId = null)

List all symbols

Retrieves all symbols with optional filtering.              :::info \"price_precision\" and \"size_precision\" are data precisions and are not always the same precisions used for trading eg. for the \"BINANCE\" exchanges. :::              :::info You should not assume that the market data will be always within the resolution provided by the \"price_precision\" and \"size_precision\". The fact that the precision values can be derived from a posterior implies the fact that this data could be delayed, also it can be changed by the data source without notice and we will immediately deliver data with the new precision while could not update the precision values in this endpoint immediately. :::              ### Symbol identifier              Our symbol identifier is created using a pattern that depends on symbol type.              Type | `symbol_id` pattern - -- -- -- -- | - -- -- -- -- SPOT | `{exchange_id}_SPOT_{asset_id_base}_{asset_id_quote}` FUTURES | `{exchange_id}_FTS_{asset_id_base}_{asset_id_quote}_{YYMMDD of future_delivery_time}` OPTION | `{exchange_id}_OPT_{asset_id_base}_{asset_id_quote}_{YYMMDD of option_expiration_time}_{option_strike_price}_{option_type_is_call as C/P}` PERPETUAL | `{exchange_id}_PERP_{asset_id_base}_{asset_id_quote}` INDEX | `{exchange_id}_IDX_{index_id}` CREDIT | `{exchange_id}_CRE_{asset_id_base}` CONTACT  | `{exchange_id}_COT_{contract_id}`              :::info In the unlikely event when the \"symbol_id\" for more than one market is the same. We will append the additional term (prefixed with the \"_\") at the end of the duplicated identifiers to differentiate them. :::info              ### Symbol types list (enumeration of `symbol_type` output variable)              Type | Name | Description - -- -- -- - | - | - -- -- -- -- -- SPOT | FX Spot | Agreement to exchange one asset for another one *(e.g. Buy BTC for USD)* FUTURES | Futures contract | FX Spot derivative contract where traders agree to trade fx spot at predetermined future time OPTION | Option contract | FX Spot derivative contract where traders agree to trade right to require buy or sell of fx spot at agreed price on exercise date PERPETUAL | Perpetual contract | FX Spot derivative contract where traders agree to trade fx spot continously without predetermined future delivery time INDEX | Index | Statistical composite that measures changes in the economy or markets. CREDIT | Credit/Funding | Margin funding contract. Order book displays lending offers and borrow bids. Price represents the daily rate. CONTRACT | Contract | Represents other types of financial instruments *(e.g. spreads, interest rate swap)*              ### Additional output variables for `symbol_type = INDEX`              Variable | Description - -- -- -- -- | - -- -- -- -- -- index_id | Index identifier index_display_name | Human readable name of the index *(optional)* index_display_description | Description of the index *(optional)*              ### Additional output variables for `symbol_type = FUTURES`              Variable | Description - -- -- -- -- | - -- -- -- -- -- future_delivery_time | Predetermined time of futures contract delivery date in ISO 8601 future_contract_unit | Contact size *(eg. 10 BTC if `future_contract_unit` = `10` and `future_contract_unit_asset` = `BTC`)* future_contract_unit_asset | Identifier of the asset used to denominate the contract unit              ### Additional output variables for `symbol_type = PERPETUAL`              Variable | Description - -- -- -- -- | - -- -- -- -- -- future_contract_unit | Contact size *(eg. 10 BTC if `future_contract_unit` = `10` and `future_contract_unit_asset` = `BTC`)* future_contract_unit_asset | Identifier of the asset used to denominate the contract unit              ### Additional output variables for `symbol_type = OPTION`              Variable | Description - -- -- -- -- | - -- -- -- -- -- option_type_is_call | Boolean value representing option type. `true` for Call options, `false` for Put options option_strike_price | Price at which option contract can be exercised option_contract_unit | Base asset amount of underlying spot which single option represents option_exercise_style | Option exercise style. Can be `EUROPEAN` or `AMERICAN` option_expiration_time | Option contract expiration time in ISO 8601              ### Additional output variables for `symbol_type = CONTRACT`              Variable | Description - -- -- -- -- | - -- -- -- -- -- contract_delivery_time | Predetermined time of contract delivery date in ISO 8601 contract_unit | Contact size *(eg. 10 BTC if `contract_unit` = `10` and `contract_unit_asset` = `BTC`)* contract_unit_asset | Identifier of the asset used to denominate the contract unit contract_id | Identifier of contract by the exchange

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Api;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Client;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Model;

namespace Example
{
    public class V1SymbolsGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://rest.coinapi.io";
            // Configure API key authorization: APIKey
            config.AddApiKey("Authorization", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Authorization", "Bearer");
            // Configure Bearer token for authorization: JWT
            config.AccessToken = "YOUR_BEARER_TOKEN";

            var apiInstance = new MetadataApi(config);
            var filterSymbolId = "filterSymbolId_example";  // string | Comma or semicolon delimited parts of symbol identifier used to filter response. (optional, eg. `BITSTAMP`_ or `BINANCE_SPOT_`) (optional) 
            var filterExchangeId = "filterExchangeId_example";  // string | The filter for exchange ID. (optional) 
            var filterAssetId = "filterAssetId_example";  // string | The filter for asset ID. (optional) 

            try
            {
                // List all symbols
                List<V1Symbol> result = apiInstance.V1SymbolsGet(filterSymbolId, filterExchangeId, filterAssetId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling MetadataApi.V1SymbolsGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1SymbolsGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // List all symbols
    ApiResponse<List<V1Symbol>> response = apiInstance.V1SymbolsGetWithHttpInfo(filterSymbolId, filterExchangeId, filterAssetId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling MetadataApi.V1SymbolsGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **filterSymbolId** | **string** | Comma or semicolon delimited parts of symbol identifier used to filter response. (optional, eg. &#x60;BITSTAMP&#x60;_ or &#x60;BINANCE_SPOT_&#x60;) | [optional]  |
| **filterExchangeId** | **string** | The filter for exchange ID. | [optional]  |
| **filterAssetId** | **string** | The filter for asset ID. | [optional]  |

### Return type

[**List&lt;V1Symbol&gt;**](V1Symbol.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="v1symbolsmapexchangeidget"></a>
# **V1SymbolsMapExchangeIdGet**
> List&lt;V1SymbolMapping&gt; V1SymbolsMapExchangeIdGet (string exchangeId)

List symbol mapping for the exchange

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Api;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Client;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Model;

namespace Example
{
    public class V1SymbolsMapExchangeIdGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://rest.coinapi.io";
            // Configure API key authorization: APIKey
            config.AddApiKey("Authorization", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Authorization", "Bearer");
            // Configure Bearer token for authorization: JWT
            config.AccessToken = "YOUR_BEARER_TOKEN";

            var apiInstance = new MetadataApi(config);
            var exchangeId = "exchangeId_example";  // string | The ID of the exchange (from the Metadata -> Exchanges)

            try
            {
                // List symbol mapping for the exchange
                List<V1SymbolMapping> result = apiInstance.V1SymbolsMapExchangeIdGet(exchangeId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling MetadataApi.V1SymbolsMapExchangeIdGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1SymbolsMapExchangeIdGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // List symbol mapping for the exchange
    ApiResponse<List<V1SymbolMapping>> response = apiInstance.V1SymbolsMapExchangeIdGetWithHttpInfo(exchangeId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling MetadataApi.V1SymbolsMapExchangeIdGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **exchangeId** | **string** | The ID of the exchange (from the Metadata -&gt; Exchanges) |  |

### Return type

[**List&lt;V1SymbolMapping&gt;**](V1SymbolMapping.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

