# APIBricks.FinFeedAPI.STOCKAPI.REST.V1.Api.NativeIEXApi

All URIs are relative to *https://api-historical.stock.finfeedapi.com*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**V1NativeIexAdminMessagesSymbolGet**](NativeIEXApi.md#v1nativeiexadminmessagessymbolget) | **GET** /v1/native/iex/admin/messages/{symbol} | Get Admin Messages |
| [**V1NativeIexAdminSystemEventGet**](NativeIEXApi.md#v1nativeiexadminsystemeventget) | **GET** /v1/native/iex/admin/system-event | Get System Events |
| [**V1NativeIexLevel1QuoteSymbolGet**](NativeIEXApi.md#v1nativeiexlevel1quotesymbolget) | **GET** /v1/native/iex/level1-quote/{symbol} | Get Level-1 Quotes |
| [**V1NativeIexLevel2PriceLevelUpdateSymbolGet**](NativeIEXApi.md#v1nativeiexlevel2pricelevelupdatesymbolget) | **GET** /v1/native/iex/level2-price-level-update/{symbol} | Get Level-2 Price Level Book |
| [**V1NativeIexLevel3OrderBookSymbolGet**](NativeIEXApi.md#v1nativeiexlevel3orderbooksymbolget) | **GET** /v1/native/iex/level3-order-book/{symbol} | Get Level-3 Order Book |
| [**V1NativeIexTradeSymbolGet**](NativeIEXApi.md#v1nativeiextradesymbolget) | **GET** /v1/native/iex/trade/{symbol} | Get Trades |

<a id="v1nativeiexadminmessagessymbolget"></a>
# **V1NativeIexAdminMessagesSymbolGet**
> List&lt;AdminAdminMessageModel&gt; V1NativeIexAdminMessagesSymbolGet (string symbol, DateTime date)

Get Admin Messages

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.FinFeedAPI.STOCKAPI.REST.V1.Api;
using APIBricks.FinFeedAPI.STOCKAPI.REST.V1.Client;
using APIBricks.FinFeedAPI.STOCKAPI.REST.V1.Model;

namespace Example
{
    public class V1NativeIexAdminMessagesSymbolGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api-historical.stock.finfeedapi.com";
            var apiInstance = new NativeIEXApi(config);
            var symbol = "symbol_example";  // string | The symbol identifier
            var date = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime | Optional date in format YYYY-MM-DD (defaults to latest available data)

            try
            {
                // Get Admin Messages
                List<AdminAdminMessageModel> result = apiInstance.V1NativeIexAdminMessagesSymbolGet(symbol, date);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling NativeIEXApi.V1NativeIexAdminMessagesSymbolGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1NativeIexAdminMessagesSymbolGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Get Admin Messages
    ApiResponse<List<AdminAdminMessageModel>> response = apiInstance.V1NativeIexAdminMessagesSymbolGetWithHttpInfo(symbol, date);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling NativeIEXApi.V1NativeIexAdminMessagesSymbolGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **symbol** | **string** | The symbol identifier |  |
| **date** | **DateTime** | Optional date in format YYYY-MM-DD (defaults to latest available data) |  |

### Return type

[**List&lt;AdminAdminMessageModel&gt;**](AdminAdminMessageModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="v1nativeiexadminsystemeventget"></a>
# **V1NativeIexAdminSystemEventGet**
> List&lt;AdminSystemEventModel&gt; V1NativeIexAdminSystemEventGet (DateTime date)

Get System Events

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.FinFeedAPI.STOCKAPI.REST.V1.Api;
using APIBricks.FinFeedAPI.STOCKAPI.REST.V1.Client;
using APIBricks.FinFeedAPI.STOCKAPI.REST.V1.Model;

namespace Example
{
    public class V1NativeIexAdminSystemEventGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api-historical.stock.finfeedapi.com";
            var apiInstance = new NativeIEXApi(config);
            var date = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime | Date in format YYYY-MM-DD

            try
            {
                // Get System Events
                List<AdminSystemEventModel> result = apiInstance.V1NativeIexAdminSystemEventGet(date);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling NativeIEXApi.V1NativeIexAdminSystemEventGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1NativeIexAdminSystemEventGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Get System Events
    ApiResponse<List<AdminSystemEventModel>> response = apiInstance.V1NativeIexAdminSystemEventGetWithHttpInfo(date);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling NativeIEXApi.V1NativeIexAdminSystemEventGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **date** | **DateTime** | Date in format YYYY-MM-DD |  |

### Return type

[**List&lt;AdminSystemEventModel&gt;**](AdminSystemEventModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="v1nativeiexlevel1quotesymbolget"></a>
# **V1NativeIexLevel1QuoteSymbolGet**
> List&lt;Level1QuoteUpdateModel&gt; V1NativeIexLevel1QuoteSymbolGet (string symbol, DateTime date)

Get Level-1 Quotes

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.FinFeedAPI.STOCKAPI.REST.V1.Api;
using APIBricks.FinFeedAPI.STOCKAPI.REST.V1.Client;
using APIBricks.FinFeedAPI.STOCKAPI.REST.V1.Model;

namespace Example
{
    public class V1NativeIexLevel1QuoteSymbolGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api-historical.stock.finfeedapi.com";
            var apiInstance = new NativeIEXApi(config);
            var symbol = "symbol_example";  // string | The symbol identifier
            var date = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime | Optional date in format YYYY-MM-DD (defaults to latest available data)

            try
            {
                // Get Level-1 Quotes
                List<Level1QuoteUpdateModel> result = apiInstance.V1NativeIexLevel1QuoteSymbolGet(symbol, date);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling NativeIEXApi.V1NativeIexLevel1QuoteSymbolGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1NativeIexLevel1QuoteSymbolGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Get Level-1 Quotes
    ApiResponse<List<Level1QuoteUpdateModel>> response = apiInstance.V1NativeIexLevel1QuoteSymbolGetWithHttpInfo(symbol, date);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling NativeIEXApi.V1NativeIexLevel1QuoteSymbolGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **symbol** | **string** | The symbol identifier |  |
| **date** | **DateTime** | Optional date in format YYYY-MM-DD (defaults to latest available data) |  |

### Return type

[**List&lt;Level1QuoteUpdateModel&gt;**](Level1QuoteUpdateModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="v1nativeiexlevel2pricelevelupdatesymbolget"></a>
# **V1NativeIexLevel2PriceLevelUpdateSymbolGet**
> List&lt;Level2PriceLevelUpdateModel&gt; V1NativeIexLevel2PriceLevelUpdateSymbolGet (string symbol, DateTime date)

Get Level-2 Price Level Book

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.FinFeedAPI.STOCKAPI.REST.V1.Api;
using APIBricks.FinFeedAPI.STOCKAPI.REST.V1.Client;
using APIBricks.FinFeedAPI.STOCKAPI.REST.V1.Model;

namespace Example
{
    public class V1NativeIexLevel2PriceLevelUpdateSymbolGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api-historical.stock.finfeedapi.com";
            var apiInstance = new NativeIEXApi(config);
            var symbol = "symbol_example";  // string | The symbol identifier
            var date = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime | Optional date in format YYYY-MM-DD (defaults to latest available data)

            try
            {
                // Get Level-2 Price Level Book
                List<Level2PriceLevelUpdateModel> result = apiInstance.V1NativeIexLevel2PriceLevelUpdateSymbolGet(symbol, date);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling NativeIEXApi.V1NativeIexLevel2PriceLevelUpdateSymbolGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1NativeIexLevel2PriceLevelUpdateSymbolGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Get Level-2 Price Level Book
    ApiResponse<List<Level2PriceLevelUpdateModel>> response = apiInstance.V1NativeIexLevel2PriceLevelUpdateSymbolGetWithHttpInfo(symbol, date);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling NativeIEXApi.V1NativeIexLevel2PriceLevelUpdateSymbolGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **symbol** | **string** | The symbol identifier |  |
| **date** | **DateTime** | Optional date in format YYYY-MM-DD (defaults to latest available data) |  |

### Return type

[**List&lt;Level2PriceLevelUpdateModel&gt;**](Level2PriceLevelUpdateModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="v1nativeiexlevel3orderbooksymbolget"></a>
# **V1NativeIexLevel3OrderBookSymbolGet**
> List&lt;Level3OrderBookModel&gt; V1NativeIexLevel3OrderBookSymbolGet (string symbol, DateTime date)

Get Level-3 Order Book

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.FinFeedAPI.STOCKAPI.REST.V1.Api;
using APIBricks.FinFeedAPI.STOCKAPI.REST.V1.Client;
using APIBricks.FinFeedAPI.STOCKAPI.REST.V1.Model;

namespace Example
{
    public class V1NativeIexLevel3OrderBookSymbolGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api-historical.stock.finfeedapi.com";
            var apiInstance = new NativeIEXApi(config);
            var symbol = "symbol_example";  // string | The symbol identifier
            var date = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime | Optional date in format YYYY-MM-DD (defaults to latest available data)

            try
            {
                // Get Level-3 Order Book
                List<Level3OrderBookModel> result = apiInstance.V1NativeIexLevel3OrderBookSymbolGet(symbol, date);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling NativeIEXApi.V1NativeIexLevel3OrderBookSymbolGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1NativeIexLevel3OrderBookSymbolGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Get Level-3 Order Book
    ApiResponse<List<Level3OrderBookModel>> response = apiInstance.V1NativeIexLevel3OrderBookSymbolGetWithHttpInfo(symbol, date);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling NativeIEXApi.V1NativeIexLevel3OrderBookSymbolGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **symbol** | **string** | The symbol identifier |  |
| **date** | **DateTime** | Optional date in format YYYY-MM-DD (defaults to latest available data) |  |

### Return type

[**List&lt;Level3OrderBookModel&gt;**](Level3OrderBookModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="v1nativeiextradesymbolget"></a>
# **V1NativeIexTradeSymbolGet**
> List&lt;TradeTradeModel&gt; V1NativeIexTradeSymbolGet (string symbol, DateTime date)

Get Trades

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.FinFeedAPI.STOCKAPI.REST.V1.Api;
using APIBricks.FinFeedAPI.STOCKAPI.REST.V1.Client;
using APIBricks.FinFeedAPI.STOCKAPI.REST.V1.Model;

namespace Example
{
    public class V1NativeIexTradeSymbolGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api-historical.stock.finfeedapi.com";
            var apiInstance = new NativeIEXApi(config);
            var symbol = "symbol_example";  // string | The symbol identifier
            var date = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime | Optional date in format YYYY-MM-DD (defaults to latest available data)

            try
            {
                // Get Trades
                List<TradeTradeModel> result = apiInstance.V1NativeIexTradeSymbolGet(symbol, date);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling NativeIEXApi.V1NativeIexTradeSymbolGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1NativeIexTradeSymbolGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Get Trades
    ApiResponse<List<TradeTradeModel>> response = apiInstance.V1NativeIexTradeSymbolGetWithHttpInfo(symbol, date);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling NativeIEXApi.V1NativeIexTradeSymbolGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **symbol** | **string** | The symbol identifier |  |
| **date** | **DateTime** | Optional date in format YYYY-MM-DD (defaults to latest available data) |  |

### Return type

[**List&lt;TradeTradeModel&gt;**](TradeTradeModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

