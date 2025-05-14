# WWW::OpenAPIClient::NativeIEXApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::NativeIEXApi;
```

All URIs are relative to *https://api-historical.stock.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_native_iex_admin_messages_symbol_get**](NativeIEXApi.md#v1_native_iex_admin_messages_symbol_get) | **GET** /v1/native/iex/admin/messages/{symbol} | Get Admin Messages
[**v1_native_iex_admin_system_event_get**](NativeIEXApi.md#v1_native_iex_admin_system_event_get) | **GET** /v1/native/iex/admin/system-event | Get System Events
[**v1_native_iex_level1_quote_symbol_get**](NativeIEXApi.md#v1_native_iex_level1_quote_symbol_get) | **GET** /v1/native/iex/level1-quote/{symbol} | Get Level-1 Quotes
[**v1_native_iex_level2_price_level_update_symbol_get**](NativeIEXApi.md#v1_native_iex_level2_price_level_update_symbol_get) | **GET** /v1/native/iex/level2-price-level-update/{symbol} | Get Level-2 Price Level Book
[**v1_native_iex_level3_order_book_symbol_get**](NativeIEXApi.md#v1_native_iex_level3_order_book_symbol_get) | **GET** /v1/native/iex/level3-order-book/{symbol} | Get Level-3 Order Book
[**v1_native_iex_trade_symbol_get**](NativeIEXApi.md#v1_native_iex_trade_symbol_get) | **GET** /v1/native/iex/trade/{symbol} | Get Trades


# **v1_native_iex_admin_messages_symbol_get**
> ARRAY[AdminAdminMessageModel] v1_native_iex_admin_messages_symbol_get(symbol => $symbol, date => $date)

Get Admin Messages

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::NativeIEXApi;
my $api_instance = WWW::OpenAPIClient::NativeIEXApi->new(
);

my $symbol = "symbol_example"; # string | The symbol identifier
my $date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | Optional date in format YYYY-MM-DD (defaults to latest available data)

eval {
    my $result = $api_instance->v1_native_iex_admin_messages_symbol_get(symbol => $symbol, date => $date);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling NativeIEXApi->v1_native_iex_admin_messages_symbol_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **string**| The symbol identifier | 
 **date** | **DATE_TIME**| Optional date in format YYYY-MM-DD (defaults to latest available data) | 

### Return type

[**ARRAY[AdminAdminMessageModel]**](AdminAdminMessageModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_native_iex_admin_system_event_get**
> ARRAY[AdminSystemEventModel] v1_native_iex_admin_system_event_get(date => $date)

Get System Events

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::NativeIEXApi;
my $api_instance = WWW::OpenAPIClient::NativeIEXApi->new(
);

my $date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | Date in format YYYY-MM-DD

eval {
    my $result = $api_instance->v1_native_iex_admin_system_event_get(date => $date);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling NativeIEXApi->v1_native_iex_admin_system_event_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **date** | **DATE_TIME**| Date in format YYYY-MM-DD | 

### Return type

[**ARRAY[AdminSystemEventModel]**](AdminSystemEventModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_native_iex_level1_quote_symbol_get**
> ARRAY[Level1QuoteUpdateModel] v1_native_iex_level1_quote_symbol_get(symbol => $symbol, date => $date)

Get Level-1 Quotes

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::NativeIEXApi;
my $api_instance = WWW::OpenAPIClient::NativeIEXApi->new(
);

my $symbol = "symbol_example"; # string | The symbol identifier
my $date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | Optional date in format YYYY-MM-DD (defaults to latest available data)

eval {
    my $result = $api_instance->v1_native_iex_level1_quote_symbol_get(symbol => $symbol, date => $date);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling NativeIEXApi->v1_native_iex_level1_quote_symbol_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **string**| The symbol identifier | 
 **date** | **DATE_TIME**| Optional date in format YYYY-MM-DD (defaults to latest available data) | 

### Return type

[**ARRAY[Level1QuoteUpdateModel]**](Level1QuoteUpdateModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_native_iex_level2_price_level_update_symbol_get**
> ARRAY[Level2PriceLevelUpdateModel] v1_native_iex_level2_price_level_update_symbol_get(symbol => $symbol, date => $date)

Get Level-2 Price Level Book

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::NativeIEXApi;
my $api_instance = WWW::OpenAPIClient::NativeIEXApi->new(
);

my $symbol = "symbol_example"; # string | The symbol identifier
my $date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | Optional date in format YYYY-MM-DD (defaults to latest available data)

eval {
    my $result = $api_instance->v1_native_iex_level2_price_level_update_symbol_get(symbol => $symbol, date => $date);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling NativeIEXApi->v1_native_iex_level2_price_level_update_symbol_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **string**| The symbol identifier | 
 **date** | **DATE_TIME**| Optional date in format YYYY-MM-DD (defaults to latest available data) | 

### Return type

[**ARRAY[Level2PriceLevelUpdateModel]**](Level2PriceLevelUpdateModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_native_iex_level3_order_book_symbol_get**
> ARRAY[Level3OrderBookModel] v1_native_iex_level3_order_book_symbol_get(symbol => $symbol, date => $date)

Get Level-3 Order Book

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::NativeIEXApi;
my $api_instance = WWW::OpenAPIClient::NativeIEXApi->new(
);

my $symbol = "symbol_example"; # string | The symbol identifier
my $date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | Optional date in format YYYY-MM-DD (defaults to latest available data)

eval {
    my $result = $api_instance->v1_native_iex_level3_order_book_symbol_get(symbol => $symbol, date => $date);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling NativeIEXApi->v1_native_iex_level3_order_book_symbol_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **string**| The symbol identifier | 
 **date** | **DATE_TIME**| Optional date in format YYYY-MM-DD (defaults to latest available data) | 

### Return type

[**ARRAY[Level3OrderBookModel]**](Level3OrderBookModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_native_iex_trade_symbol_get**
> ARRAY[TradeTradeModel] v1_native_iex_trade_symbol_get(symbol => $symbol, date => $date)

Get Trades

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::NativeIEXApi;
my $api_instance = WWW::OpenAPIClient::NativeIEXApi->new(
);

my $symbol = "symbol_example"; # string | The symbol identifier
my $date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | Optional date in format YYYY-MM-DD (defaults to latest available data)

eval {
    my $result = $api_instance->v1_native_iex_trade_symbol_get(symbol => $symbol, date => $date);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling NativeIEXApi->v1_native_iex_trade_symbol_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **string**| The symbol identifier | 
 **date** | **DATE_TIME**| Optional date in format YYYY-MM-DD (defaults to latest available data) | 

### Return type

[**ARRAY[TradeTradeModel]**](TradeTradeModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

