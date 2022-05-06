# CoinAPI.OMS.API.SDK.Api.ExchangeApi

All URIs are relative to *https://ems-mgmt-sandbox.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ExchangeLoginRequire**](ExchangeApi.md#exchangeloginrequire) | **GET** /v1/exchanges | Get exchange configuration


<a name="exchangeloginrequire"></a>
# **ExchangeLoginRequire**
> List&lt;ExchangeLoginRequire&gt; ExchangeLoginRequire ()

Get exchange configuration

Get information about the required parameters or server site location of the exchanges supported in the EMS API.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.OMS.API.SDK.Api;
using CoinAPI.OMS.API.SDK.Client;
using CoinAPI.OMS.API.SDK.Model;

namespace Example
{
    public class ExchangeLoginRequireExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://ems-mgmt-sandbox.coinapi.io";
            // Configure API key authorization: APIKeyHeader
            config.AddApiKey("X-CoinAPI-Key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("X-CoinAPI-Key", "Bearer");
            // Configure API key authorization: APIKeyQueryParam
            config.AddApiKey("apikey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("apikey", "Bearer");

            var apiInstance = new ExchangeApi(config);

            try
            {
                // Get exchange configuration
                List<ExchangeLoginRequire> result = apiInstance.ExchangeLoginRequire();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling ExchangeApi.ExchangeLoginRequire: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List&lt;ExchangeLoginRequire&gt;**](ExchangeLoginRequire.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

