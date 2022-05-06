# CoinAPI.OMS.API.SDK.Api.AccountApi

All URIs are relative to *https://ems-mgmt-sandbox.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**DeleteAccount**](AccountApi.md#deleteaccount) | **DELETE** /v1/accounts | Delete account
[**DeleteAccountAll**](AccountApi.md#deleteaccountall) | **DELETE** /v1/accounts/all | Delete all accounts
[**GetAccount**](AccountApi.md#getaccount) | **GET** /v1/accounts | Get accounts
[**PersistAccount**](AccountApi.md#persistaccount) | **POST** /v1/accounts | Add or update account


<a name="deleteaccount"></a>
# **DeleteAccount**
> void DeleteAccount (List<string> exchangeId)

Delete account

Delete specific exchange account maintained by the EMS API for your subscription.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.OMS.API.SDK.Api;
using CoinAPI.OMS.API.SDK.Client;
using CoinAPI.OMS.API.SDK.Model;

namespace Example
{
    public class DeleteAccountExample
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

            var apiInstance = new AccountApi(config);
            var exchangeId = new List<string>(); // List<string> | Exchange identifier of the account to delete

            try
            {
                // Delete account
                apiInstance.DeleteAccount(exchangeId);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AccountApi.DeleteAccount: " + e.Message );
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
 **exchangeId** | [**List&lt;string&gt;**](string.md)| Exchange identifier of the account to delete | 

### Return type

void (empty response body)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **404** | Exchange account not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="deleteaccountall"></a>
# **DeleteAccountAll**
> void DeleteAccountAll ()

Delete all accounts

Delete all exchange accounts maintained by the EMS API for your subscription.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.OMS.API.SDK.Api;
using CoinAPI.OMS.API.SDK.Client;
using CoinAPI.OMS.API.SDK.Model;

namespace Example
{
    public class DeleteAccountAllExample
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

            var apiInstance = new AccountApi(config);

            try
            {
                // Delete all accounts
                apiInstance.DeleteAccountAll();
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AccountApi.DeleteAccountAll: " + e.Message );
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

void (empty response body)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getaccount"></a>
# **GetAccount**
> List&lt;GetAccount&gt; GetAccount (List<string> filterExchangeId = null)

Get accounts

Get all accounts maintained for your subscription in the EMS API.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.OMS.API.SDK.Api;
using CoinAPI.OMS.API.SDK.Client;
using CoinAPI.OMS.API.SDK.Model;

namespace Example
{
    public class GetAccountExample
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

            var apiInstance = new AccountApi(config);
            var filterExchangeId = new List<string>(); // List<string> | Exchange id of the specific account to provide single account instead of the list of all accounts (optional) 

            try
            {
                // Get accounts
                List<GetAccount> result = apiInstance.GetAccount(filterExchangeId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AccountApi.GetAccount: " + e.Message );
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
 **filterExchangeId** | [**List&lt;string&gt;**](string.md)| Exchange id of the specific account to provide single account instead of the list of all accounts | [optional] 

### Return type

[**List&lt;GetAccount&gt;**](GetAccount.md)

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

<a name="persistaccount"></a>
# **PersistAccount**
> void PersistAccount (AccountData body)

Add or update account

Add new or update existing exchange account for your subscription in the EMS API.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.OMS.API.SDK.Api;
using CoinAPI.OMS.API.SDK.Client;
using CoinAPI.OMS.API.SDK.Model;

namespace Example
{
    public class PersistAccountExample
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

            var apiInstance = new AccountApi(config);
            var body = new AccountData(); // AccountData | Exchange account object that needs to be add/update to the EMS

            try
            {
                // Add or update account
                apiInstance.PersistAccount(body);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AccountApi.PersistAccount: " + e.Message );
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
 **body** | [**AccountData**](AccountData.md)| Exchange account object that needs to be add/update to the EMS | 

### Return type

void (empty response body)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **400** | Invalid exchange id |  -  |
| **405** | Validation exception |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

