# CoinAPI.OMS.API.SDK.Api.CertificateApi

All URIs are relative to *https://ems-mgmt-sandbox.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Certificate**](CertificateApi.md#certificate) | **GET** /v1/certificate/pem | Get authentication certificate


<a name="certificate"></a>
# **Certificate**
> string Certificate ()

Get authentication certificate

Providing PEM file with the Private Key, Public Key and the Certificate to authenticate to the EMS API.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.OMS.API.SDK.Api;
using CoinAPI.OMS.API.SDK.Client;
using CoinAPI.OMS.API.SDK.Model;

namespace Example
{
    public class CertificateExample
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

            var apiInstance = new CertificateApi(config);

            try
            {
                // Get authentication certificate
                string result = apiInstance.Certificate();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CertificateApi.Certificate: " + e.Message );
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

**string**

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

