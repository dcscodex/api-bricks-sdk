# CoinAPI.OMS.API.SDK23.Api.OrdersApi

All URIs are relative to *http://localhost:3001*

Method | HTTP request | Description
------------- | ------------- | -------------
[**V1OrdersCancelAllPost**](OrdersApi.md#v1orderscancelallpost) | **POST** /v1/orders/cancel/all | Cancel all order
[**V1OrdersCancelPost**](OrdersApi.md#v1orderscancelpost) | **POST** /v1/orders/cancel | Cancel order
[**V1OrdersGet**](OrdersApi.md#v1ordersget) | **GET** /v1/orders | Get orders
[**V1OrdersPost**](OrdersApi.md#v1orderspost) | **POST** /v1/orders | Create new order



## V1OrdersCancelAllPost

> MessagesOk V1OrdersCancelAllPost (CancelAllOrder cancelAllOrder)

Cancel all order

Cancel all existing order.

### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.OMS.API.SDK23.Api;
using CoinAPI.OMS.API.SDK23.Client;
using CoinAPI.OMS.API.SDK23.Model;

namespace Example
{
    public class V1OrdersCancelAllPostExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "http://localhost:3001";
            var apiInstance = new OrdersApi(Configuration.Default);
            var cancelAllOrder = new CancelAllOrder(); // CancelAllOrder | 

            try
            {
                // Cancel all order
                MessagesOk result = apiInstance.V1OrdersCancelAllPost(cancelAllOrder);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling OrdersApi.V1OrdersCancelAllPost: " + e.Message );
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
 **cancelAllOrder** | [**CancelAllOrder**](CancelAllOrder.md)|  | 

### Return type

[**MessagesOk**](MessagesOk.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Result |  -  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1OrdersCancelPost

> OrderLive V1OrdersCancelPost (CancelOrder cancelOrder)

Cancel order

Cancel an existing order, can be used to cancel margin, exchange, and derivative orders. You can cancel the order by the internal order ID or exchange order ID.

### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.OMS.API.SDK23.Api;
using CoinAPI.OMS.API.SDK23.Client;
using CoinAPI.OMS.API.SDK23.Model;

namespace Example
{
    public class V1OrdersCancelPostExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "http://localhost:3001";
            var apiInstance = new OrdersApi(Configuration.Default);
            var cancelOrder = new CancelOrder(); // CancelOrder | 

            try
            {
                // Cancel order
                OrderLive result = apiInstance.V1OrdersCancelPost(cancelOrder);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling OrdersApi.V1OrdersCancelPost: " + e.Message );
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
 **cancelOrder** | [**CancelOrder**](CancelOrder.md)|  | 

### Return type

[**OrderLive**](OrderLive.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, appliction/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Canceled order |  -  |
| **400** | Validation errors |  -  |
| **490** | Exchange not registered |  -  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1OrdersGet

> List&lt;Order&gt; V1OrdersGet (string exchangeId = null)

Get orders

List your current open orders.

### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.OMS.API.SDK23.Api;
using CoinAPI.OMS.API.SDK23.Client;
using CoinAPI.OMS.API.SDK23.Model;

namespace Example
{
    public class V1OrdersGetExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "http://localhost:3001";
            var apiInstance = new OrdersApi(Configuration.Default);
            var exchangeId = KRAKEN;  // string | Exchange name (optional) 

            try
            {
                // Get orders
                List<Order> result = apiInstance.V1OrdersGet(exchangeId);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling OrdersApi.V1OrdersGet: " + e.Message );
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
 **exchangeId** | **string**| Exchange name | [optional] 

### Return type

[**List&lt;Order&gt;**](Order.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Ok |  -  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1OrdersPost

> OrderLive V1OrdersPost (NewOrder newOrder)

Create new order

You can place two types of orders: limit and market. Orders can only be placed if your account has sufficient funds.

### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.OMS.API.SDK23.Api;
using CoinAPI.OMS.API.SDK23.Client;
using CoinAPI.OMS.API.SDK23.Model;

namespace Example
{
    public class V1OrdersPostExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "http://localhost:3001";
            var apiInstance = new OrdersApi(Configuration.Default);
            var newOrder = new NewOrder(); // NewOrder | 

            try
            {
                // Create new order
                OrderLive result = apiInstance.V1OrdersPost(newOrder);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling OrdersApi.V1OrdersPost: " + e.Message );
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
 **newOrder** | [**NewOrder**](NewOrder.md)|  | 

### Return type

[**OrderLive**](OrderLive.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, appliction/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Created |  -  |
| **400** | Validation errors |  -  |
| **490** | Exchange not registered |  -  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

