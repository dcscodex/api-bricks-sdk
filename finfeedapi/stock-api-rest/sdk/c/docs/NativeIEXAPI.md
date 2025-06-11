# NativeIEXAPI

All URIs are relative to *https://api-historical.stock.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**NativeIEXAPI_v1NativeIexAdminMessagesSymbolGet**](NativeIEXAPI.md#NativeIEXAPI_v1NativeIexAdminMessagesSymbolGet) | **GET** /v1/native/iex/admin/messages/{symbol} | Get Admin Messages
[**NativeIEXAPI_v1NativeIexAdminSystemEventGet**](NativeIEXAPI.md#NativeIEXAPI_v1NativeIexAdminSystemEventGet) | **GET** /v1/native/iex/admin/system-event | Get System Events
[**NativeIEXAPI_v1NativeIexLevel1QuoteSymbolGet**](NativeIEXAPI.md#NativeIEXAPI_v1NativeIexLevel1QuoteSymbolGet) | **GET** /v1/native/iex/level1-quote/{symbol} | Get Level-1 Quotes
[**NativeIEXAPI_v1NativeIexLevel2PriceLevelUpdateSymbolGet**](NativeIEXAPI.md#NativeIEXAPI_v1NativeIexLevel2PriceLevelUpdateSymbolGet) | **GET** /v1/native/iex/level2-price-level-update/{symbol} | Get Level-2 Price Level Book
[**NativeIEXAPI_v1NativeIexLevel3OrderBookSymbolGet**](NativeIEXAPI.md#NativeIEXAPI_v1NativeIexLevel3OrderBookSymbolGet) | **GET** /v1/native/iex/level3-order-book/{symbol} | Get Level-3 Order Book
[**NativeIEXAPI_v1NativeIexTradeSymbolGet**](NativeIEXAPI.md#NativeIEXAPI_v1NativeIexTradeSymbolGet) | **GET** /v1/native/iex/trade/{symbol} | Get Trades


# **NativeIEXAPI_v1NativeIexAdminMessagesSymbolGet**
```c
// Get Admin Messages
//
list_t* NativeIEXAPI_v1NativeIexAdminMessagesSymbolGet(apiClient_t *apiClient, char *symbol, char date);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**symbol** | **char \*** | The symbol identifier | 
**date** | **char** | Optional date in format YYYY-MM-DD (defaults to latest available data) | 

### Return type

[list_t](admin_admin_message_model.md) *


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **NativeIEXAPI_v1NativeIexAdminSystemEventGet**
```c
// Get System Events
//
list_t* NativeIEXAPI_v1NativeIexAdminSystemEventGet(apiClient_t *apiClient, char date);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**date** | **char** | Date in format YYYY-MM-DD | 

### Return type

[list_t](admin_system_event_model.md) *


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **NativeIEXAPI_v1NativeIexLevel1QuoteSymbolGet**
```c
// Get Level-1 Quotes
//
list_t* NativeIEXAPI_v1NativeIexLevel1QuoteSymbolGet(apiClient_t *apiClient, char *symbol, char date);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**symbol** | **char \*** | The symbol identifier | 
**date** | **char** | Optional date in format YYYY-MM-DD (defaults to latest available data) | 

### Return type

[list_t](level1_quote_update_model.md) *


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **NativeIEXAPI_v1NativeIexLevel2PriceLevelUpdateSymbolGet**
```c
// Get Level-2 Price Level Book
//
list_t* NativeIEXAPI_v1NativeIexLevel2PriceLevelUpdateSymbolGet(apiClient_t *apiClient, char *symbol, char date);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**symbol** | **char \*** | The symbol identifier | 
**date** | **char** | Optional date in format YYYY-MM-DD (defaults to latest available data) | 

### Return type

[list_t](level2_price_level_update_model.md) *


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **NativeIEXAPI_v1NativeIexLevel3OrderBookSymbolGet**
```c
// Get Level-3 Order Book
//
list_t* NativeIEXAPI_v1NativeIexLevel3OrderBookSymbolGet(apiClient_t *apiClient, char *symbol, char date);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**symbol** | **char \*** | The symbol identifier | 
**date** | **char** | Optional date in format YYYY-MM-DD (defaults to latest available data) | 

### Return type

[list_t](level3_order_book_model.md) *


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **NativeIEXAPI_v1NativeIexTradeSymbolGet**
```c
// Get Trades
//
list_t* NativeIEXAPI_v1NativeIexTradeSymbolGet(apiClient_t *apiClient, char *symbol, char date);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**symbol** | **char \*** | The symbol identifier | 
**date** | **char** | Optional date in format YYYY-MM-DD (defaults to latest available data) | 

### Return type

[list_t](trade_trade_model.md) *


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

