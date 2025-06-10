# OpenapiClient::MetadataApi

All URIs are relative to *https://api-realtime.fx.finfeedapi.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_assets_asset_id_get**](MetadataApi.md#v1_assets_asset_id_get) | **GET** /v1/assets/{asset_id} | List all assets by asset ID |
| [**v1_assets_get**](MetadataApi.md#v1_assets_get) | **GET** /v1/assets | List all assets |
| [**v1_assets_icons_size_get**](MetadataApi.md#v1_assets_icons_size_get) | **GET** /v1/assets/icons/{size} | List all asset icons |


## v1_assets_asset_id_get

> <Array<V1Asset>> v1_assets_asset_id_get(asset_id)

List all assets by asset ID

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: APIKey
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'

  # Configure API key authorization: JWT
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = OpenapiClient::MetadataApi.new
asset_id = 'asset_id_example' # String | The asset ID.

begin
  # List all assets by asset ID
  result = api_instance.v1_assets_asset_id_get(asset_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetadataApi->v1_assets_asset_id_get: #{e}"
end
```

#### Using the v1_assets_asset_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<V1Asset>>, Integer, Hash)> v1_assets_asset_id_get_with_http_info(asset_id)

```ruby
begin
  # List all assets by asset ID
  data, status_code, headers = api_instance.v1_assets_asset_id_get_with_http_info(asset_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<V1Asset>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetadataApi->v1_assets_asset_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asset_id** | **String** | The asset ID. |  |

### Return type

[**Array&lt;V1Asset&gt;**](V1Asset.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1_assets_get

> <Array<V1Asset>> v1_assets_get(opts)

List all assets

Retrieves all assets.              :::info Our asset identifiers are aligned with the ISO 4217 currency codes standard only for fiat money (government or law regulated currency). :::              :::info Properties of the output are providing aggregated information from across all symbols related to the specific asset. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source. :::

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: APIKey
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'

  # Configure API key authorization: JWT
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = OpenapiClient::MetadataApi.new
opts = {
  filter_asset_id: 'filter_asset_id_example' # String | Comma or semicolon delimited asset identifiers used to filter response. (optional, eg. `BTC;ETH`).
}

begin
  # List all assets
  result = api_instance.v1_assets_get(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetadataApi->v1_assets_get: #{e}"
end
```

#### Using the v1_assets_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<V1Asset>>, Integer, Hash)> v1_assets_get_with_http_info(opts)

```ruby
begin
  # List all assets
  data, status_code, headers = api_instance.v1_assets_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<V1Asset>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetadataApi->v1_assets_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter_asset_id** | **String** | Comma or semicolon delimited asset identifiers used to filter response. (optional, eg. &#x60;BTC;ETH&#x60;). | [optional] |

### Return type

[**Array&lt;V1Asset&gt;**](V1Asset.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1_assets_icons_size_get

> <Array<V1Icon>> v1_assets_icons_size_get(size)

List all asset icons

Gets the list of icons (of the given size) for all the assets.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: APIKey
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'

  # Configure API key authorization: JWT
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = OpenapiClient::MetadataApi.new
size = 56 # Integer | The size of the icons.

begin
  # List all asset icons
  result = api_instance.v1_assets_icons_size_get(size)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetadataApi->v1_assets_icons_size_get: #{e}"
end
```

#### Using the v1_assets_icons_size_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<V1Icon>>, Integer, Hash)> v1_assets_icons_size_get_with_http_info(size)

```ruby
begin
  # List all asset icons
  data, status_code, headers = api_instance.v1_assets_icons_size_get_with_http_info(size)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<V1Icon>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetadataApi->v1_assets_icons_size_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **size** | **Integer** | The size of the icons. |  |

### Return type

[**Array&lt;V1Icon&gt;**](V1Icon.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

