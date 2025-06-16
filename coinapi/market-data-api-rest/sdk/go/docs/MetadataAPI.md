# \MetadataAPI

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**V1AssetsAssetIdGet**](MetadataAPI.md#V1AssetsAssetIdGet) | **Get** /v1/assets/{asset_id} | List all assets by asset ID
[**V1AssetsGet**](MetadataAPI.md#V1AssetsGet) | **Get** /v1/assets | List all assets
[**V1AssetsIconsSizeGet**](MetadataAPI.md#V1AssetsIconsSizeGet) | **Get** /v1/assets/icons/{size} | List all asset icons
[**V1ChainsChainIdGet**](MetadataAPI.md#V1ChainsChainIdGet) | **Get** /v1/chains/{chain_id} | List all chains by chain ID
[**V1ChainsGet**](MetadataAPI.md#V1ChainsGet) | **Get** /v1/chains | List all blockchain chains
[**V1ExchangesExchangeIdGet**](MetadataAPI.md#V1ExchangesExchangeIdGet) | **Get** /v1/exchanges/{exchange_id} | List all exchanges by exchange_id
[**V1ExchangesGet**](MetadataAPI.md#V1ExchangesGet) | **Get** /v1/exchanges | List all exchanges
[**V1ExchangesIconsSizeGet**](MetadataAPI.md#V1ExchangesIconsSizeGet) | **Get** /v1/exchanges/icons/{size} | List of icons for the exchanges
[**V1SymbolsExchangeIdGet**](MetadataAPI.md#V1SymbolsExchangeIdGet) | **Get** /v1/symbols/{exchange_id} | List of symbols for the exchange
[**V1SymbolsGet**](MetadataAPI.md#V1SymbolsGet) | **Get** /v1/symbols | List all symbols
[**V1SymbolsMapExchangeIdGet**](MetadataAPI.md#V1SymbolsMapExchangeIdGet) | **Get** /v1/symbols/map/{exchange_id} | List symbol mapping for the exchange



## V1AssetsAssetIdGet

> []V1Asset V1AssetsAssetIdGet(ctx, assetId).Execute()

List all assets by asset ID

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	assetId := "assetId_example" // string | The asset ID.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MetadataAPI.V1AssetsAssetIdGet(context.Background(), assetId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MetadataAPI.V1AssetsAssetIdGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1AssetsAssetIdGet`: []V1Asset
	fmt.Fprintf(os.Stdout, "Response from `MetadataAPI.V1AssetsAssetIdGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**assetId** | **string** | The asset ID. | 

### Other Parameters

Other parameters are passed through a pointer to a apiV1AssetsAssetIdGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**[]V1Asset**](V1Asset.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1AssetsGet

> []V1Asset V1AssetsGet(ctx).FilterAssetId(filterAssetId).Execute()

List all assets



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	filterAssetId := "filterAssetId_example" // string | Comma or semicolon delimited asset identifiers used to filter response. (optional, eg. `BTC;ETH`). (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MetadataAPI.V1AssetsGet(context.Background()).FilterAssetId(filterAssetId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MetadataAPI.V1AssetsGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1AssetsGet`: []V1Asset
	fmt.Fprintf(os.Stdout, "Response from `MetadataAPI.V1AssetsGet`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiV1AssetsGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterAssetId** | **string** | Comma or semicolon delimited asset identifiers used to filter response. (optional, eg. &#x60;BTC;ETH&#x60;). | 

### Return type

[**[]V1Asset**](V1Asset.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1AssetsIconsSizeGet

> []V1Icon V1AssetsIconsSizeGet(ctx, size).Execute()

List all asset icons



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	size := int32(56) // int32 | The size of the icons.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MetadataAPI.V1AssetsIconsSizeGet(context.Background(), size).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MetadataAPI.V1AssetsIconsSizeGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1AssetsIconsSizeGet`: []V1Icon
	fmt.Fprintf(os.Stdout, "Response from `MetadataAPI.V1AssetsIconsSizeGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**size** | **int32** | The size of the icons. | 

### Other Parameters

Other parameters are passed through a pointer to a apiV1AssetsIconsSizeGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**[]V1Icon**](V1Icon.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1ChainsChainIdGet

> []V1Chain V1ChainsChainIdGet(ctx, chainId).Execute()

List all chains by chain ID

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	chainId := "chainId_example" // string | The chain ID.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MetadataAPI.V1ChainsChainIdGet(context.Background(), chainId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MetadataAPI.V1ChainsChainIdGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1ChainsChainIdGet`: []V1Chain
	fmt.Fprintf(os.Stdout, "Response from `MetadataAPI.V1ChainsChainIdGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**chainId** | **string** | The chain ID. | 

### Other Parameters

Other parameters are passed through a pointer to a apiV1ChainsChainIdGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**[]V1Chain**](V1Chain.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1ChainsGet

> []V1Chain V1ChainsGet(ctx).FilterChainId(filterChainId).Execute()

List all blockchain chains



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	filterChainId := "filterChainId_example" // string | Comma or semicolon delimited chain identifiers used to filter response. (optional, eg. `ETHEREUM;ARBITRUM`). (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MetadataAPI.V1ChainsGet(context.Background()).FilterChainId(filterChainId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MetadataAPI.V1ChainsGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1ChainsGet`: []V1Chain
	fmt.Fprintf(os.Stdout, "Response from `MetadataAPI.V1ChainsGet`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiV1ChainsGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterChainId** | **string** | Comma or semicolon delimited chain identifiers used to filter response. (optional, eg. &#x60;ETHEREUM;ARBITRUM&#x60;). | 

### Return type

[**[]V1Chain**](V1Chain.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1ExchangesExchangeIdGet

> []V1Exchange V1ExchangesExchangeIdGet(ctx, exchangeId).Execute()

List all exchanges by exchange_id

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	exchangeId := "exchangeId_example" // string | The ID of the exchange.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MetadataAPI.V1ExchangesExchangeIdGet(context.Background(), exchangeId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MetadataAPI.V1ExchangesExchangeIdGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1ExchangesExchangeIdGet`: []V1Exchange
	fmt.Fprintf(os.Stdout, "Response from `MetadataAPI.V1ExchangesExchangeIdGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**exchangeId** | **string** | The ID of the exchange. | 

### Other Parameters

Other parameters are passed through a pointer to a apiV1ExchangesExchangeIdGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**[]V1Exchange**](V1Exchange.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1ExchangesGet

> []V1Exchange V1ExchangesGet(ctx).FilterExchangeId(filterExchangeId).Execute()

List all exchanges



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	filterExchangeId := "filterExchangeId_example" // string | Comma or semicolon delimited exchange identifiers used to filter response. (optional, eg. `BITSTAMP;GEMINI`) (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MetadataAPI.V1ExchangesGet(context.Background()).FilterExchangeId(filterExchangeId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MetadataAPI.V1ExchangesGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1ExchangesGet`: []V1Exchange
	fmt.Fprintf(os.Stdout, "Response from `MetadataAPI.V1ExchangesGet`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiV1ExchangesGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterExchangeId** | **string** | Comma or semicolon delimited exchange identifiers used to filter response. (optional, eg. &#x60;BITSTAMP;GEMINI&#x60;) | 

### Return type

[**[]V1Exchange**](V1Exchange.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1ExchangesIconsSizeGet

> []V1Icon V1ExchangesIconsSizeGet(ctx, size).Execute()

List of icons for the exchanges

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	size := int32(56) // int32 | The size of the icons.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MetadataAPI.V1ExchangesIconsSizeGet(context.Background(), size).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MetadataAPI.V1ExchangesIconsSizeGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1ExchangesIconsSizeGet`: []V1Icon
	fmt.Fprintf(os.Stdout, "Response from `MetadataAPI.V1ExchangesIconsSizeGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**size** | **int32** | The size of the icons. | 

### Other Parameters

Other parameters are passed through a pointer to a apiV1ExchangesIconsSizeGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**[]V1Icon**](V1Icon.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1SymbolsExchangeIdGet

> []V1Symbol V1SymbolsExchangeIdGet(ctx, exchangeId).FilterSymbolId(filterSymbolId).FilterAssetId(filterAssetId).Execute()

List of symbols for the exchange

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	exchangeId := "exchangeId_example" // string | The ID of the exchange (from the Metadata -> Exchanges)
	filterSymbolId := "filterSymbolId_example" // string | The filter for symbol ID. (optional)
	filterAssetId := "filterAssetId_example" // string | The filter for asset ID. (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MetadataAPI.V1SymbolsExchangeIdGet(context.Background(), exchangeId).FilterSymbolId(filterSymbolId).FilterAssetId(filterAssetId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MetadataAPI.V1SymbolsExchangeIdGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1SymbolsExchangeIdGet`: []V1Symbol
	fmt.Fprintf(os.Stdout, "Response from `MetadataAPI.V1SymbolsExchangeIdGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**exchangeId** | **string** | The ID of the exchange (from the Metadata -&gt; Exchanges) | 

### Other Parameters

Other parameters are passed through a pointer to a apiV1SymbolsExchangeIdGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **filterSymbolId** | **string** | The filter for symbol ID. | 
 **filterAssetId** | **string** | The filter for asset ID. | 

### Return type

[**[]V1Symbol**](V1Symbol.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1SymbolsGet

> []V1Symbol V1SymbolsGet(ctx).FilterSymbolId(filterSymbolId).FilterExchangeId(filterExchangeId).FilterAssetId(filterAssetId).Execute()

List all symbols



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	filterSymbolId := "filterSymbolId_example" // string | Comma or semicolon delimited parts of symbol identifier used to filter response. (optional, eg. `BITSTAMP`_ or `BINANCE_SPOT_`) (optional)
	filterExchangeId := "filterExchangeId_example" // string | The filter for exchange ID. (optional)
	filterAssetId := "filterAssetId_example" // string | The filter for asset ID. (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MetadataAPI.V1SymbolsGet(context.Background()).FilterSymbolId(filterSymbolId).FilterExchangeId(filterExchangeId).FilterAssetId(filterAssetId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MetadataAPI.V1SymbolsGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1SymbolsGet`: []V1Symbol
	fmt.Fprintf(os.Stdout, "Response from `MetadataAPI.V1SymbolsGet`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiV1SymbolsGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterSymbolId** | **string** | Comma or semicolon delimited parts of symbol identifier used to filter response. (optional, eg. &#x60;BITSTAMP&#x60;_ or &#x60;BINANCE_SPOT_&#x60;) | 
 **filterExchangeId** | **string** | The filter for exchange ID. | 
 **filterAssetId** | **string** | The filter for asset ID. | 

### Return type

[**[]V1Symbol**](V1Symbol.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1SymbolsMapExchangeIdGet

> []V1SymbolMapping V1SymbolsMapExchangeIdGet(ctx, exchangeId).Execute()

List symbol mapping for the exchange

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	exchangeId := "exchangeId_example" // string | The ID of the exchange (from the Metadata -> Exchanges)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MetadataAPI.V1SymbolsMapExchangeIdGet(context.Background(), exchangeId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MetadataAPI.V1SymbolsMapExchangeIdGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1SymbolsMapExchangeIdGet`: []V1SymbolMapping
	fmt.Fprintf(os.Stdout, "Response from `MetadataAPI.V1SymbolsMapExchangeIdGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**exchangeId** | **string** | The ID of the exchange (from the Metadata -&gt; Exchanges) | 

### Other Parameters

Other parameters are passed through a pointer to a apiV1SymbolsMapExchangeIdGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**[]V1SymbolMapping**](V1SymbolMapping.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

