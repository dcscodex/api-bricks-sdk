# NativeIEXApi

All URIs are relative to *https://api-historical.stock.finfeedapi.com*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v1NativeIexAdminMessagesSymbolGet**](NativeIEXApi.md#v1NativeIexAdminMessagesSymbolGet) | **GET** /v1/native/iex/admin/messages/{symbol} | Get Admin Messages |
| [**v1NativeIexAdminSystemEventGet**](NativeIEXApi.md#v1NativeIexAdminSystemEventGet) | **GET** /v1/native/iex/admin/system-event | Get System Events |
| [**v1NativeIexLevel1QuoteSymbolGet**](NativeIEXApi.md#v1NativeIexLevel1QuoteSymbolGet) | **GET** /v1/native/iex/level1-quote/{symbol} | Get Level-1 Quotes |
| [**v1NativeIexLevel2PriceLevelUpdateSymbolGet**](NativeIEXApi.md#v1NativeIexLevel2PriceLevelUpdateSymbolGet) | **GET** /v1/native/iex/level2-price-level-update/{symbol} | Get Level-2 Price Level Book |
| [**v1NativeIexLevel3OrderBookSymbolGet**](NativeIEXApi.md#v1NativeIexLevel3OrderBookSymbolGet) | **GET** /v1/native/iex/level3-order-book/{symbol} | Get Level-3 Order Book |
| [**v1NativeIexTradeSymbolGet**](NativeIEXApi.md#v1NativeIexTradeSymbolGet) | **GET** /v1/native/iex/trade/{symbol} | Get Trades |


<a id="v1NativeIexAdminMessagesSymbolGet"></a>
# **v1NativeIexAdminMessagesSymbolGet**
> kotlin.collections.List&lt;AdminAdminMessageModel&gt; v1NativeIexAdminMessagesSymbolGet(symbol, date)

Get Admin Messages

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = NativeIEXApi()
val symbol : kotlin.String = symbol_example // kotlin.String | The symbol identifier
val date : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | Optional date in format YYYY-MM-DD (defaults to latest available data)
try {
    val result : kotlin.collections.List<AdminAdminMessageModel> = apiInstance.v1NativeIexAdminMessagesSymbolGet(symbol, date)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling NativeIEXApi#v1NativeIexAdminMessagesSymbolGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling NativeIEXApi#v1NativeIexAdminMessagesSymbolGet")
    e.printStackTrace()
}
```

### Parameters
| **symbol** | **kotlin.String**| The symbol identifier | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **date** | **java.time.OffsetDateTime**| Optional date in format YYYY-MM-DD (defaults to latest available data) | |

### Return type

[**kotlin.collections.List&lt;AdminAdminMessageModel&gt;**](AdminAdminMessageModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="v1NativeIexAdminSystemEventGet"></a>
# **v1NativeIexAdminSystemEventGet**
> kotlin.collections.List&lt;AdminSystemEventModel&gt; v1NativeIexAdminSystemEventGet(date)

Get System Events

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = NativeIEXApi()
val date : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | Date in format YYYY-MM-DD
try {
    val result : kotlin.collections.List<AdminSystemEventModel> = apiInstance.v1NativeIexAdminSystemEventGet(date)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling NativeIEXApi#v1NativeIexAdminSystemEventGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling NativeIEXApi#v1NativeIexAdminSystemEventGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **date** | **java.time.OffsetDateTime**| Date in format YYYY-MM-DD | |

### Return type

[**kotlin.collections.List&lt;AdminSystemEventModel&gt;**](AdminSystemEventModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="v1NativeIexLevel1QuoteSymbolGet"></a>
# **v1NativeIexLevel1QuoteSymbolGet**
> kotlin.collections.List&lt;Level1QuoteUpdateModel&gt; v1NativeIexLevel1QuoteSymbolGet(symbol, date)

Get Level-1 Quotes

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = NativeIEXApi()
val symbol : kotlin.String = symbol_example // kotlin.String | The symbol identifier
val date : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | Optional date in format YYYY-MM-DD (defaults to latest available data)
try {
    val result : kotlin.collections.List<Level1QuoteUpdateModel> = apiInstance.v1NativeIexLevel1QuoteSymbolGet(symbol, date)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling NativeIEXApi#v1NativeIexLevel1QuoteSymbolGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling NativeIEXApi#v1NativeIexLevel1QuoteSymbolGet")
    e.printStackTrace()
}
```

### Parameters
| **symbol** | **kotlin.String**| The symbol identifier | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **date** | **java.time.OffsetDateTime**| Optional date in format YYYY-MM-DD (defaults to latest available data) | |

### Return type

[**kotlin.collections.List&lt;Level1QuoteUpdateModel&gt;**](Level1QuoteUpdateModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="v1NativeIexLevel2PriceLevelUpdateSymbolGet"></a>
# **v1NativeIexLevel2PriceLevelUpdateSymbolGet**
> kotlin.collections.List&lt;Level2PriceLevelUpdateModel&gt; v1NativeIexLevel2PriceLevelUpdateSymbolGet(symbol, date)

Get Level-2 Price Level Book

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = NativeIEXApi()
val symbol : kotlin.String = symbol_example // kotlin.String | The symbol identifier
val date : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | Optional date in format YYYY-MM-DD (defaults to latest available data)
try {
    val result : kotlin.collections.List<Level2PriceLevelUpdateModel> = apiInstance.v1NativeIexLevel2PriceLevelUpdateSymbolGet(symbol, date)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling NativeIEXApi#v1NativeIexLevel2PriceLevelUpdateSymbolGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling NativeIEXApi#v1NativeIexLevel2PriceLevelUpdateSymbolGet")
    e.printStackTrace()
}
```

### Parameters
| **symbol** | **kotlin.String**| The symbol identifier | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **date** | **java.time.OffsetDateTime**| Optional date in format YYYY-MM-DD (defaults to latest available data) | |

### Return type

[**kotlin.collections.List&lt;Level2PriceLevelUpdateModel&gt;**](Level2PriceLevelUpdateModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="v1NativeIexLevel3OrderBookSymbolGet"></a>
# **v1NativeIexLevel3OrderBookSymbolGet**
> kotlin.collections.List&lt;Level3OrderBookModel&gt; v1NativeIexLevel3OrderBookSymbolGet(symbol, date)

Get Level-3 Order Book

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = NativeIEXApi()
val symbol : kotlin.String = symbol_example // kotlin.String | The symbol identifier
val date : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | Optional date in format YYYY-MM-DD (defaults to latest available data)
try {
    val result : kotlin.collections.List<Level3OrderBookModel> = apiInstance.v1NativeIexLevel3OrderBookSymbolGet(symbol, date)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling NativeIEXApi#v1NativeIexLevel3OrderBookSymbolGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling NativeIEXApi#v1NativeIexLevel3OrderBookSymbolGet")
    e.printStackTrace()
}
```

### Parameters
| **symbol** | **kotlin.String**| The symbol identifier | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **date** | **java.time.OffsetDateTime**| Optional date in format YYYY-MM-DD (defaults to latest available data) | |

### Return type

[**kotlin.collections.List&lt;Level3OrderBookModel&gt;**](Level3OrderBookModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="v1NativeIexTradeSymbolGet"></a>
# **v1NativeIexTradeSymbolGet**
> kotlin.collections.List&lt;TradeTradeModel&gt; v1NativeIexTradeSymbolGet(symbol, date)

Get Trades

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = NativeIEXApi()
val symbol : kotlin.String = symbol_example // kotlin.String | The symbol identifier
val date : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | Optional date in format YYYY-MM-DD (defaults to latest available data)
try {
    val result : kotlin.collections.List<TradeTradeModel> = apiInstance.v1NativeIexTradeSymbolGet(symbol, date)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling NativeIEXApi#v1NativeIexTradeSymbolGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling NativeIEXApi#v1NativeIexTradeSymbolGet")
    e.printStackTrace()
}
```

### Parameters
| **symbol** | **kotlin.String**| The symbol identifier | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **date** | **java.time.OffsetDateTime**| Optional date in format YYYY-MM-DD (defaults to latest available data) | |

### Return type

[**kotlin.collections.List&lt;TradeTradeModel&gt;**](TradeTradeModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

