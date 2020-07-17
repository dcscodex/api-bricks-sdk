# OpenapiClient::PositionsApi

All URIs are relative to *https://13d16e9d-d8b1-4ef4-bc4a-ed8156b2b159.mock.pstmn.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_positions_get**](PositionsApi.md#v1_positions_get) | **GET** /v1/positions | Get open positions



## v1_positions_get

> Array&lt;Position&gt; v1_positions_get(opts)

Get open positions

Get current open positions across all or single exchange.

### Example

```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::PositionsApi.new
opts = {
  exchange_id: 'KRAKEN' # String | Filter the balances to the specific exchange.
}

begin
  #Get open positions
  result = api_instance.v1_positions_get(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling PositionsApi->v1_positions_get: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **String**| Filter the balances to the specific exchange. | [optional] 

### Return type

[**Array&lt;Position&gt;**](Position.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, appliction/json

