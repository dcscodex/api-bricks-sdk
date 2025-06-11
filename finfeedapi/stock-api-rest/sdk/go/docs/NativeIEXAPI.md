# \NativeIEXAPI

All URIs are relative to *https://api-historical.stock.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**V1NativeIexAdminMessagesSymbolGet**](NativeIEXAPI.md#V1NativeIexAdminMessagesSymbolGet) | **Get** /v1/native/iex/admin/messages/{symbol} | Get Admin Messages
[**V1NativeIexAdminSystemEventGet**](NativeIEXAPI.md#V1NativeIexAdminSystemEventGet) | **Get** /v1/native/iex/admin/system-event | Get System Events
[**V1NativeIexLevel1QuoteSymbolGet**](NativeIEXAPI.md#V1NativeIexLevel1QuoteSymbolGet) | **Get** /v1/native/iex/level1-quote/{symbol} | Get Level-1 Quotes
[**V1NativeIexLevel2PriceLevelUpdateSymbolGet**](NativeIEXAPI.md#V1NativeIexLevel2PriceLevelUpdateSymbolGet) | **Get** /v1/native/iex/level2-price-level-update/{symbol} | Get Level-2 Price Level Book
[**V1NativeIexLevel3OrderBookSymbolGet**](NativeIEXAPI.md#V1NativeIexLevel3OrderBookSymbolGet) | **Get** /v1/native/iex/level3-order-book/{symbol} | Get Level-3 Order Book
[**V1NativeIexTradeSymbolGet**](NativeIEXAPI.md#V1NativeIexTradeSymbolGet) | **Get** /v1/native/iex/trade/{symbol} | Get Trades



## V1NativeIexAdminMessagesSymbolGet

> []AdminAdminMessageModel V1NativeIexAdminMessagesSymbolGet(ctx, symbol).Date(date).Execute()

Get Admin Messages

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
    "time"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	symbol := "symbol_example" // string | The symbol identifier
	date := time.Now() // time.Time | Optional date in format YYYY-MM-DD (defaults to latest available data)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.NativeIEXAPI.V1NativeIexAdminMessagesSymbolGet(context.Background(), symbol).Date(date).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `NativeIEXAPI.V1NativeIexAdminMessagesSymbolGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1NativeIexAdminMessagesSymbolGet`: []AdminAdminMessageModel
	fmt.Fprintf(os.Stdout, "Response from `NativeIEXAPI.V1NativeIexAdminMessagesSymbolGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**symbol** | **string** | The symbol identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiV1NativeIexAdminMessagesSymbolGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **date** | **time.Time** | Optional date in format YYYY-MM-DD (defaults to latest available data) | 

### Return type

[**[]AdminAdminMessageModel**](AdminAdminMessageModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1NativeIexAdminSystemEventGet

> []AdminSystemEventModel V1NativeIexAdminSystemEventGet(ctx).Date(date).Execute()

Get System Events

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
    "time"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	date := time.Now() // time.Time | Date in format YYYY-MM-DD

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.NativeIEXAPI.V1NativeIexAdminSystemEventGet(context.Background()).Date(date).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `NativeIEXAPI.V1NativeIexAdminSystemEventGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1NativeIexAdminSystemEventGet`: []AdminSystemEventModel
	fmt.Fprintf(os.Stdout, "Response from `NativeIEXAPI.V1NativeIexAdminSystemEventGet`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiV1NativeIexAdminSystemEventGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **date** | **time.Time** | Date in format YYYY-MM-DD | 

### Return type

[**[]AdminSystemEventModel**](AdminSystemEventModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1NativeIexLevel1QuoteSymbolGet

> []Level1QuoteUpdateModel V1NativeIexLevel1QuoteSymbolGet(ctx, symbol).Date(date).Execute()

Get Level-1 Quotes

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
    "time"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	symbol := "symbol_example" // string | The symbol identifier
	date := time.Now() // time.Time | Optional date in format YYYY-MM-DD (defaults to latest available data)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.NativeIEXAPI.V1NativeIexLevel1QuoteSymbolGet(context.Background(), symbol).Date(date).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `NativeIEXAPI.V1NativeIexLevel1QuoteSymbolGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1NativeIexLevel1QuoteSymbolGet`: []Level1QuoteUpdateModel
	fmt.Fprintf(os.Stdout, "Response from `NativeIEXAPI.V1NativeIexLevel1QuoteSymbolGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**symbol** | **string** | The symbol identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiV1NativeIexLevel1QuoteSymbolGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **date** | **time.Time** | Optional date in format YYYY-MM-DD (defaults to latest available data) | 

### Return type

[**[]Level1QuoteUpdateModel**](Level1QuoteUpdateModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1NativeIexLevel2PriceLevelUpdateSymbolGet

> []Level2PriceLevelUpdateModel V1NativeIexLevel2PriceLevelUpdateSymbolGet(ctx, symbol).Date(date).Execute()

Get Level-2 Price Level Book

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
    "time"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	symbol := "symbol_example" // string | The symbol identifier
	date := time.Now() // time.Time | Optional date in format YYYY-MM-DD (defaults to latest available data)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.NativeIEXAPI.V1NativeIexLevel2PriceLevelUpdateSymbolGet(context.Background(), symbol).Date(date).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `NativeIEXAPI.V1NativeIexLevel2PriceLevelUpdateSymbolGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1NativeIexLevel2PriceLevelUpdateSymbolGet`: []Level2PriceLevelUpdateModel
	fmt.Fprintf(os.Stdout, "Response from `NativeIEXAPI.V1NativeIexLevel2PriceLevelUpdateSymbolGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**symbol** | **string** | The symbol identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiV1NativeIexLevel2PriceLevelUpdateSymbolGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **date** | **time.Time** | Optional date in format YYYY-MM-DD (defaults to latest available data) | 

### Return type

[**[]Level2PriceLevelUpdateModel**](Level2PriceLevelUpdateModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1NativeIexLevel3OrderBookSymbolGet

> []Level3OrderBookModel V1NativeIexLevel3OrderBookSymbolGet(ctx, symbol).Date(date).Execute()

Get Level-3 Order Book

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
    "time"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	symbol := "symbol_example" // string | The symbol identifier
	date := time.Now() // time.Time | Optional date in format YYYY-MM-DD (defaults to latest available data)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.NativeIEXAPI.V1NativeIexLevel3OrderBookSymbolGet(context.Background(), symbol).Date(date).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `NativeIEXAPI.V1NativeIexLevel3OrderBookSymbolGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1NativeIexLevel3OrderBookSymbolGet`: []Level3OrderBookModel
	fmt.Fprintf(os.Stdout, "Response from `NativeIEXAPI.V1NativeIexLevel3OrderBookSymbolGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**symbol** | **string** | The symbol identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiV1NativeIexLevel3OrderBookSymbolGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **date** | **time.Time** | Optional date in format YYYY-MM-DD (defaults to latest available data) | 

### Return type

[**[]Level3OrderBookModel**](Level3OrderBookModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1NativeIexTradeSymbolGet

> []TradeTradeModel V1NativeIexTradeSymbolGet(ctx, symbol).Date(date).Execute()

Get Trades

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
    "time"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	symbol := "symbol_example" // string | The symbol identifier
	date := time.Now() // time.Time | Optional date in format YYYY-MM-DD (defaults to latest available data)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.NativeIEXAPI.V1NativeIexTradeSymbolGet(context.Background(), symbol).Date(date).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `NativeIEXAPI.V1NativeIexTradeSymbolGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1NativeIexTradeSymbolGet`: []TradeTradeModel
	fmt.Fprintf(os.Stdout, "Response from `NativeIEXAPI.V1NativeIexTradeSymbolGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**symbol** | **string** | The symbol identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiV1NativeIexTradeSymbolGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **date** | **time.Time** | Optional date in format YYYY-MM-DD (defaults to latest available data) | 

### Return type

[**[]TradeTradeModel**](TradeTradeModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

