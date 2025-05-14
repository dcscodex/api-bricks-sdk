# \IndexesAPI

All URIs are relative to *https://rest-api.indexes.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**V1IndexdefInputDataIndexDefinitionIdAllGet**](IndexesAPI.md#V1IndexdefInputDataIndexDefinitionIdAllGet) | **Get** /v1/indexdef/input-data/{index_definition_id}/all | Returns all data inputs for a specific index definition
[**V1IndexdefInputDataIndexDefinitionIdGet**](IndexesAPI.md#V1IndexdefInputDataIndexDefinitionIdGet) | **Get** /v1/indexdef/input-data/{index_definition_id} | Returns data inputs for certain index definition and time
[**V1IndexdefMultiassetGet**](IndexesAPI.md#V1IndexdefMultiassetGet) | **Get** /v1/indexdef/multiasset | Get all multi-asset weights
[**V1IndexdefMultiassetIndexIdGet**](IndexesAPI.md#V1IndexdefMultiassetIndexIdGet) | **Get** /v1/indexdef/multiasset/{index_id} | Get multi-asset weights for specific index
[**V1IndexesGet**](IndexesAPI.md#V1IndexesGet) | **Get** /v1/indexes | List indexes
[**V1IndexesIndexDefinitionIdCurrentSnapshotGet**](IndexesAPI.md#V1IndexesIndexDefinitionIdCurrentSnapshotGet) | **Get** /v1/indexes/{index_definition_id}/currentSnapshot | Current Index Values for index definition
[**V1IndexesIndexDefinitionIdHistorySnapshotGet**](IndexesAPI.md#V1IndexesIndexDefinitionIdHistorySnapshotGet) | **Get** /v1/indexes/{index_definition_id}/historySnapshot | Historical Index Values for index definition
[**V1IndexesIndexIdCurrentGet**](IndexesAPI.md#V1IndexesIndexIdCurrentGet) | **Get** /v1/indexes/{index_id}/current | Current Index Value
[**V1IndexesIndexIdHistoryGet**](IndexesAPI.md#V1IndexesIndexIdHistoryGet) | **Get** /v1/indexes/{index_id}/history | Historical Index Value w/Composition
[**V1IndexesIndexIdTimeseriesGet**](IndexesAPI.md#V1IndexesIndexIdTimeseriesGet) | **Get** /v1/indexes/{index_id}/timeseries | Timeseries Index Value



## V1IndexdefInputDataIndexDefinitionIdAllGet

> []IndexesIndexDefinitionInputData V1IndexdefInputDataIndexDefinitionIdAllGet(ctx, indexDefinitionId).Execute()

Returns all data inputs for a specific index definition

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
	indexDefinitionId := "indexDefinitionId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.IndexesAPI.V1IndexdefInputDataIndexDefinitionIdAllGet(context.Background(), indexDefinitionId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `IndexesAPI.V1IndexdefInputDataIndexDefinitionIdAllGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1IndexdefInputDataIndexDefinitionIdAllGet`: []IndexesIndexDefinitionInputData
	fmt.Fprintf(os.Stdout, "Response from `IndexesAPI.V1IndexdefInputDataIndexDefinitionIdAllGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**indexDefinitionId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiV1IndexdefInputDataIndexDefinitionIdAllGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**[]IndexesIndexDefinitionInputData**](IndexesIndexDefinitionInputData.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1IndexdefInputDataIndexDefinitionIdGet

> []IndexesIndexDefinitionSnapshotEntry V1IndexdefInputDataIndexDefinitionIdGet(ctx, indexDefinitionId).Time(time).EnabledOnly(enabledOnly).PendingOnly(pendingOnly).FilterAssetId(filterAssetId).WithStatusInfo(withStatusInfo).Execute()

Returns data inputs for certain index definition and time

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
	indexDefinitionId := "indexDefinitionId_example" // string | 
	time := time.Now() // time.Time |  (optional)
	enabledOnly := true // bool |  (optional) (default to false)
	pendingOnly := true // bool |  (optional) (default to false)
	filterAssetId := "filterAssetId_example" // string |  (optional)
	withStatusInfo := true // bool |  (optional) (default to false)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.IndexesAPI.V1IndexdefInputDataIndexDefinitionIdGet(context.Background(), indexDefinitionId).Time(time).EnabledOnly(enabledOnly).PendingOnly(pendingOnly).FilterAssetId(filterAssetId).WithStatusInfo(withStatusInfo).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `IndexesAPI.V1IndexdefInputDataIndexDefinitionIdGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1IndexdefInputDataIndexDefinitionIdGet`: []IndexesIndexDefinitionSnapshotEntry
	fmt.Fprintf(os.Stdout, "Response from `IndexesAPI.V1IndexdefInputDataIndexDefinitionIdGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**indexDefinitionId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiV1IndexdefInputDataIndexDefinitionIdGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **time** | **time.Time** |  | 
 **enabledOnly** | **bool** |  | [default to false]
 **pendingOnly** | **bool** |  | [default to false]
 **filterAssetId** | **string** |  | 
 **withStatusInfo** | **bool** |  | [default to false]

### Return type

[**[]IndexesIndexDefinitionSnapshotEntry**](IndexesIndexDefinitionSnapshotEntry.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1IndexdefMultiassetGet

> []IndexesIndexMultiAssetWeight V1IndexdefMultiassetGet(ctx).Execute()

Get all multi-asset weights

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

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.IndexesAPI.V1IndexdefMultiassetGet(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `IndexesAPI.V1IndexdefMultiassetGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1IndexdefMultiassetGet`: []IndexesIndexMultiAssetWeight
	fmt.Fprintf(os.Stdout, "Response from `IndexesAPI.V1IndexdefMultiassetGet`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiV1IndexdefMultiassetGetRequest struct via the builder pattern


### Return type

[**[]IndexesIndexMultiAssetWeight**](IndexesIndexMultiAssetWeight.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1IndexdefMultiassetIndexIdGet

> []IndexesIndexMultiAssetWeight V1IndexdefMultiassetIndexIdGet(ctx, indexId).Execute()

Get multi-asset weights for specific index

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
	indexId := "indexId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.IndexesAPI.V1IndexdefMultiassetIndexIdGet(context.Background(), indexId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `IndexesAPI.V1IndexdefMultiassetIndexIdGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1IndexdefMultiassetIndexIdGet`: []IndexesIndexMultiAssetWeight
	fmt.Fprintf(os.Stdout, "Response from `IndexesAPI.V1IndexdefMultiassetIndexIdGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**indexId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiV1IndexdefMultiassetIndexIdGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**[]IndexesIndexMultiAssetWeight**](IndexesIndexMultiAssetWeight.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1IndexesGet

> []IndexesIndexIdentifier V1IndexesGet(ctx).Execute()

List indexes

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

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.IndexesAPI.V1IndexesGet(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `IndexesAPI.V1IndexesGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1IndexesGet`: []IndexesIndexIdentifier
	fmt.Fprintf(os.Stdout, "Response from `IndexesAPI.V1IndexesGet`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiV1IndexesGetRequest struct via the builder pattern


### Return type

[**[]IndexesIndexIdentifier**](IndexesIndexIdentifier.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1IndexesIndexDefinitionIdCurrentSnapshotGet

> []IndexesIndexDefinitionSnapshotEntry V1IndexesIndexDefinitionIdCurrentSnapshotGet(ctx, indexDefinitionId).Execute()

Current Index Values for index definition

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
	indexDefinitionId := "indexDefinitionId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.IndexesAPI.V1IndexesIndexDefinitionIdCurrentSnapshotGet(context.Background(), indexDefinitionId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `IndexesAPI.V1IndexesIndexDefinitionIdCurrentSnapshotGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1IndexesIndexDefinitionIdCurrentSnapshotGet`: []IndexesIndexDefinitionSnapshotEntry
	fmt.Fprintf(os.Stdout, "Response from `IndexesAPI.V1IndexesIndexDefinitionIdCurrentSnapshotGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**indexDefinitionId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiV1IndexesIndexDefinitionIdCurrentSnapshotGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**[]IndexesIndexDefinitionSnapshotEntry**](IndexesIndexDefinitionSnapshotEntry.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1IndexesIndexDefinitionIdHistorySnapshotGet

> []IndexesIndexDefinitionSnapshotEntry V1IndexesIndexDefinitionIdHistorySnapshotGet(ctx, indexDefinitionId).Time(time).Execute()

Historical Index Values for index definition

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
	indexDefinitionId := "indexDefinitionId_example" // string | 
	time := time.Now() // time.Time |  (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.IndexesAPI.V1IndexesIndexDefinitionIdHistorySnapshotGet(context.Background(), indexDefinitionId).Time(time).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `IndexesAPI.V1IndexesIndexDefinitionIdHistorySnapshotGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1IndexesIndexDefinitionIdHistorySnapshotGet`: []IndexesIndexDefinitionSnapshotEntry
	fmt.Fprintf(os.Stdout, "Response from `IndexesAPI.V1IndexesIndexDefinitionIdHistorySnapshotGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**indexDefinitionId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiV1IndexesIndexDefinitionIdHistorySnapshotGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **time** | **time.Time** |  | 

### Return type

[**[]IndexesIndexDefinitionSnapshotEntry**](IndexesIndexDefinitionSnapshotEntry.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1IndexesIndexIdCurrentGet

> IndexesIndexValue V1IndexesIndexIdCurrentGet(ctx, indexId).Execute()

Current Index Value

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
	indexId := "indexId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.IndexesAPI.V1IndexesIndexIdCurrentGet(context.Background(), indexId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `IndexesAPI.V1IndexesIndexIdCurrentGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1IndexesIndexIdCurrentGet`: IndexesIndexValue
	fmt.Fprintf(os.Stdout, "Response from `IndexesAPI.V1IndexesIndexIdCurrentGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**indexId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiV1IndexesIndexIdCurrentGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**IndexesIndexValue**](IndexesIndexValue.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1IndexesIndexIdHistoryGet

> []IndexesIndexValue V1IndexesIndexIdHistoryGet(ctx, indexId).TimeStart(timeStart).TimeEnd(timeEnd).Limit(limit).Execute()

Historical Index Value w/Composition

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
	indexId := "indexId_example" // string | 
	timeStart := time.Now() // time.Time |  (optional)
	timeEnd := time.Now() // time.Time |  (optional)
	limit := int32(56) // int32 |  (optional) (default to 100)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.IndexesAPI.V1IndexesIndexIdHistoryGet(context.Background(), indexId).TimeStart(timeStart).TimeEnd(timeEnd).Limit(limit).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `IndexesAPI.V1IndexesIndexIdHistoryGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1IndexesIndexIdHistoryGet`: []IndexesIndexValue
	fmt.Fprintf(os.Stdout, "Response from `IndexesAPI.V1IndexesIndexIdHistoryGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**indexId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiV1IndexesIndexIdHistoryGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **timeStart** | **time.Time** |  | 
 **timeEnd** | **time.Time** |  | 
 **limit** | **int32** |  | [default to 100]

### Return type

[**[]IndexesIndexValue**](IndexesIndexValue.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1IndexesIndexIdTimeseriesGet

> []IndexesIndexTimeseriesItem V1IndexesIndexIdTimeseriesGet(ctx, indexId).PeriodId(periodId).TimeStart(timeStart).TimeEnd(timeEnd).Limit(limit).Execute()

Timeseries Index Value

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
	indexId := "indexId_example" // string | 
	periodId := "periodId_example" // string | Identifier of requested timeseries period (e.g. `5SEC` or `1DAY`)
	timeStart := "timeStart_example" // string | Timeseries starting time in ISO 8601
	timeEnd := "timeEnd_example" // string | Timeseries ending time in ISO 8601
	limit := int32(56) // int32 | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional) (default to 100)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.IndexesAPI.V1IndexesIndexIdTimeseriesGet(context.Background(), indexId).PeriodId(periodId).TimeStart(timeStart).TimeEnd(timeEnd).Limit(limit).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `IndexesAPI.V1IndexesIndexIdTimeseriesGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1IndexesIndexIdTimeseriesGet`: []IndexesIndexTimeseriesItem
	fmt.Fprintf(os.Stdout, "Response from `IndexesAPI.V1IndexesIndexIdTimeseriesGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**indexId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiV1IndexesIndexIdTimeseriesGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **periodId** | **string** | Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;1DAY&#x60;) | 
 **timeStart** | **string** | Timeseries starting time in ISO 8601 | 
 **timeEnd** | **string** | Timeseries ending time in ISO 8601 | 
 **limit** | **int32** | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [default to 100]

### Return type

[**[]IndexesIndexTimeseriesItem**](IndexesIndexTimeseriesItem.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

