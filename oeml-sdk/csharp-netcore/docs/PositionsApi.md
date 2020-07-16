# CoinAPI.OMS.API.SDK.Api.PositionsApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**V1PositionsGet**](PositionsApi.md#v1positionsget) | **GET** /v1/positions | Get open positions


<a name="v1positionsget"></a>
# **V1PositionsGet**
> List&lt;Position&gt; V1PositionsGet (string exchangeId = null)

Get open positions

Get current open positions across all or single exchange.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.OMS.API.SDK.Api;
using CoinAPI.OMS.API.SDK.Client;
using CoinAPI.OMS.API.SDK.Model;

namespace Example
{
    public class V1PositionsGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "http://localhost:8080";
            var apiInstance = new PositionsApi(config);
            var exchangeId = KRAKEN;  // string | Filter the balances to the specific exchange. (optional) 

            try
            {
                // Get open positions
                List<Position> result = apiInstance.V1PositionsGet(exchangeId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling PositionsApi.V1PositionsGet: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **string**| Filter the balances to the specific exchange. | [optional] 

### Return type

[**List&lt;Position&gt;**](Position.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, appliction/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Collection of positons. |  -  |
| **490** | Exchange is unreachable. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

