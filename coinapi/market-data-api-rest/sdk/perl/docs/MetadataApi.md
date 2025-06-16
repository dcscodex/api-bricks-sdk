# WWW::OpenAPIClient::MetadataApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::MetadataApi;
```

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_assets_asset_id_get**](MetadataApi.md#v1_assets_asset_id_get) | **GET** /v1/assets/{asset_id} | List all assets by asset ID
[**v1_assets_get**](MetadataApi.md#v1_assets_get) | **GET** /v1/assets | List all assets
[**v1_assets_icons_size_get**](MetadataApi.md#v1_assets_icons_size_get) | **GET** /v1/assets/icons/{size} | List all asset icons
[**v1_chains_chain_id_get**](MetadataApi.md#v1_chains_chain_id_get) | **GET** /v1/chains/{chain_id} | List all chains by chain ID
[**v1_chains_get**](MetadataApi.md#v1_chains_get) | **GET** /v1/chains | List all blockchain chains
[**v1_exchanges_exchange_id_get**](MetadataApi.md#v1_exchanges_exchange_id_get) | **GET** /v1/exchanges/{exchange_id} | List all exchanges by exchange_id
[**v1_exchanges_get**](MetadataApi.md#v1_exchanges_get) | **GET** /v1/exchanges | List all exchanges
[**v1_exchanges_icons_size_get**](MetadataApi.md#v1_exchanges_icons_size_get) | **GET** /v1/exchanges/icons/{size} | List of icons for the exchanges
[**v1_symbols_exchange_id_get**](MetadataApi.md#v1_symbols_exchange_id_get) | **GET** /v1/symbols/{exchange_id} | List of symbols for the exchange
[**v1_symbols_get**](MetadataApi.md#v1_symbols_get) | **GET** /v1/symbols | List all symbols
[**v1_symbols_map_exchange_id_get**](MetadataApi.md#v1_symbols_map_exchange_id_get) | **GET** /v1/symbols/map/{exchange_id} | List symbol mapping for the exchange


# **v1_assets_asset_id_get**
> ARRAY[V1Asset] v1_assets_asset_id_get(asset_id => $asset_id)

List all assets by asset ID

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MetadataApi;
my $api_instance = WWW::OpenAPIClient::MetadataApi->new(

    # Configure API key authorization: APIKey
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
    # Configure bearer access token for authorization: JWT
    access_token => 'YOUR_BEARER_TOKEN',
    
);

my $asset_id = "asset_id_example"; # string | The asset ID.

eval {
    my $result = $api_instance->v1_assets_asset_id_get(asset_id => $asset_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MetadataApi->v1_assets_asset_id_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asset_id** | **string**| The asset ID. | 

### Return type

[**ARRAY[V1Asset]**](V1Asset.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_assets_get**
> ARRAY[V1Asset] v1_assets_get(filter_asset_id => $filter_asset_id)

List all assets

Retrieves all assets.              :::info Our asset identifiers are aligned with the ISO 4217 currency codes standard only for fiat money (government or law regulated currency). :::              :::info Properties of the output are providing aggregated information from across all symbols related to the specific asset. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source. :::

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MetadataApi;
my $api_instance = WWW::OpenAPIClient::MetadataApi->new(

    # Configure API key authorization: APIKey
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
    # Configure bearer access token for authorization: JWT
    access_token => 'YOUR_BEARER_TOKEN',
    
);

my $filter_asset_id = "filter_asset_id_example"; # string | Comma or semicolon delimited asset identifiers used to filter response. (optional, eg. `BTC;ETH`).

eval {
    my $result = $api_instance->v1_assets_get(filter_asset_id => $filter_asset_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MetadataApi->v1_assets_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_asset_id** | **string**| Comma or semicolon delimited asset identifiers used to filter response. (optional, eg. &#x60;BTC;ETH&#x60;). | [optional] 

### Return type

[**ARRAY[V1Asset]**](V1Asset.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_assets_icons_size_get**
> ARRAY[V1Icon] v1_assets_icons_size_get(size => $size)

List all asset icons

Gets the list of icons (of the given size) for all the assets.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MetadataApi;
my $api_instance = WWW::OpenAPIClient::MetadataApi->new(

    # Configure API key authorization: APIKey
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
    # Configure bearer access token for authorization: JWT
    access_token => 'YOUR_BEARER_TOKEN',
    
);

my $size = 56; # int | The size of the icons.

eval {
    my $result = $api_instance->v1_assets_icons_size_get(size => $size);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MetadataApi->v1_assets_icons_size_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The size of the icons. | 

### Return type

[**ARRAY[V1Icon]**](V1Icon.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_chains_chain_id_get**
> ARRAY[V1Chain] v1_chains_chain_id_get(chain_id => $chain_id)

List all chains by chain ID

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MetadataApi;
my $api_instance = WWW::OpenAPIClient::MetadataApi->new(

    # Configure API key authorization: APIKey
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
    # Configure bearer access token for authorization: JWT
    access_token => 'YOUR_BEARER_TOKEN',
    
);

my $chain_id = "chain_id_example"; # string | The chain ID.

eval {
    my $result = $api_instance->v1_chains_chain_id_get(chain_id => $chain_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MetadataApi->v1_chains_chain_id_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **string**| The chain ID. | 

### Return type

[**ARRAY[V1Chain]**](V1Chain.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_chains_get**
> ARRAY[V1Chain] v1_chains_get(filter_chain_id => $filter_chain_id)

List all blockchain chains

Retrieves all blockchain chains supported by the system.              :::info Properties of the output are providing aggregated information from across all symbols related to the specific chain. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source. :::

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MetadataApi;
my $api_instance = WWW::OpenAPIClient::MetadataApi->new(

    # Configure API key authorization: APIKey
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
    # Configure bearer access token for authorization: JWT
    access_token => 'YOUR_BEARER_TOKEN',
    
);

my $filter_chain_id = "filter_chain_id_example"; # string | Comma or semicolon delimited chain identifiers used to filter response. (optional, eg. `ETHEREUM;ARBITRUM`).

eval {
    my $result = $api_instance->v1_chains_get(filter_chain_id => $filter_chain_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MetadataApi->v1_chains_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_chain_id** | **string**| Comma or semicolon delimited chain identifiers used to filter response. (optional, eg. &#x60;ETHEREUM;ARBITRUM&#x60;). | [optional] 

### Return type

[**ARRAY[V1Chain]**](V1Chain.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_exchanges_exchange_id_get**
> ARRAY[V1Exchange] v1_exchanges_exchange_id_get(exchange_id => $exchange_id)

List all exchanges by exchange_id

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MetadataApi;
my $api_instance = WWW::OpenAPIClient::MetadataApi->new(

    # Configure API key authorization: APIKey
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
    # Configure bearer access token for authorization: JWT
    access_token => 'YOUR_BEARER_TOKEN',
    
);

my $exchange_id = "exchange_id_example"; # string | The ID of the exchange.

eval {
    my $result = $api_instance->v1_exchanges_exchange_id_get(exchange_id => $exchange_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MetadataApi->v1_exchanges_exchange_id_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **string**| The ID of the exchange. | 

### Return type

[**ARRAY[V1Exchange]**](V1Exchange.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_exchanges_get**
> ARRAY[V1Exchange] v1_exchanges_get(filter_exchange_id => $filter_exchange_id)

List all exchanges

Get a detailed list of exchanges provided by the system.              :::info Properties of the output are providing aggregated information from across all symbols related to the specific exchange. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source. :::

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MetadataApi;
my $api_instance = WWW::OpenAPIClient::MetadataApi->new(

    # Configure API key authorization: APIKey
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
    # Configure bearer access token for authorization: JWT
    access_token => 'YOUR_BEARER_TOKEN',
    
);

my $filter_exchange_id = "filter_exchange_id_example"; # string | Comma or semicolon delimited exchange identifiers used to filter response. (optional, eg. `BITSTAMP;GEMINI`)

eval {
    my $result = $api_instance->v1_exchanges_get(filter_exchange_id => $filter_exchange_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MetadataApi->v1_exchanges_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_exchange_id** | **string**| Comma or semicolon delimited exchange identifiers used to filter response. (optional, eg. &#x60;BITSTAMP;GEMINI&#x60;) | [optional] 

### Return type

[**ARRAY[V1Exchange]**](V1Exchange.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_exchanges_icons_size_get**
> ARRAY[V1Icon] v1_exchanges_icons_size_get(size => $size)

List of icons for the exchanges

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MetadataApi;
my $api_instance = WWW::OpenAPIClient::MetadataApi->new(

    # Configure API key authorization: APIKey
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
    # Configure bearer access token for authorization: JWT
    access_token => 'YOUR_BEARER_TOKEN',
    
);

my $size = 56; # int | The size of the icons.

eval {
    my $result = $api_instance->v1_exchanges_icons_size_get(size => $size);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MetadataApi->v1_exchanges_icons_size_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The size of the icons. | 

### Return type

[**ARRAY[V1Icon]**](V1Icon.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_symbols_exchange_id_get**
> ARRAY[V1Symbol] v1_symbols_exchange_id_get(exchange_id => $exchange_id, filter_symbol_id => $filter_symbol_id, filter_asset_id => $filter_asset_id)

List of symbols for the exchange

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MetadataApi;
my $api_instance = WWW::OpenAPIClient::MetadataApi->new(

    # Configure API key authorization: APIKey
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
    # Configure bearer access token for authorization: JWT
    access_token => 'YOUR_BEARER_TOKEN',
    
);

my $exchange_id = "exchange_id_example"; # string | The ID of the exchange (from the Metadata -> Exchanges)
my $filter_symbol_id = "filter_symbol_id_example"; # string | The filter for symbol ID.
my $filter_asset_id = "filter_asset_id_example"; # string | The filter for asset ID.

eval {
    my $result = $api_instance->v1_symbols_exchange_id_get(exchange_id => $exchange_id, filter_symbol_id => $filter_symbol_id, filter_asset_id => $filter_asset_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MetadataApi->v1_symbols_exchange_id_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **string**| The ID of the exchange (from the Metadata -&gt; Exchanges) | 
 **filter_symbol_id** | **string**| The filter for symbol ID. | [optional] 
 **filter_asset_id** | **string**| The filter for asset ID. | [optional] 

### Return type

[**ARRAY[V1Symbol]**](V1Symbol.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_symbols_get**
> ARRAY[V1Symbol] v1_symbols_get(filter_symbol_id => $filter_symbol_id, filter_exchange_id => $filter_exchange_id, filter_asset_id => $filter_asset_id)

List all symbols

Retrieves all symbols with optional filtering.              :::info \"price_precision\" and \"size_precision\" are data precisions and are not always the same precisions used for trading eg. for the \"BINANCE\" exchanges. :::              :::info You should not assume that the market data will be always within the resolution provided by the \"price_precision\" and \"size_precision\". The fact that the precision values can be derived from a posterior implies the fact that this data could be delayed, also it can be changed by the data source without notice and we will immediately deliver data with the new precision while could not update the precision values in this endpoint immediately. :::              ### Symbol identifier              Our symbol identifier is created using a pattern that depends on symbol type.              Type | `symbol_id` pattern --------- | --------- SPOT | `{exchange_id}_SPOT_{asset_id_base}_{asset_id_quote}` FUTURES | `{exchange_id}_FTS_{asset_id_base}_{asset_id_quote}_{YYMMDD of future_delivery_time}` OPTION | `{exchange_id}_OPT_{asset_id_base}_{asset_id_quote}_{YYMMDD of option_expiration_time}_{option_strike_price}_{option_type_is_call as C/P}` PERPETUAL | `{exchange_id}_PERP_{asset_id_base}_{asset_id_quote}` INDEX | `{exchange_id}_IDX_{index_id}` CREDIT | `{exchange_id}_CRE_{asset_id_base}` CONTACT  | `{exchange_id}_COT_{contract_id}`              :::info In the unlikely event when the \"symbol_id\" for more than one market is the same. We will append the additional term (prefixed with the \"_\") at the end of the duplicated identifiers to differentiate them. :::info              ### Symbol types list (enumeration of `symbol_type` output variable)              Type | Name | Description -------- | - | ----------- SPOT | FX Spot | Agreement to exchange one asset for another one *(e.g. Buy BTC for USD)* FUTURES | Futures contract | FX Spot derivative contract where traders agree to trade fx spot at predetermined future time OPTION | Option contract | FX Spot derivative contract where traders agree to trade right to require buy or sell of fx spot at agreed price on exercise date PERPETUAL | Perpetual contract | FX Spot derivative contract where traders agree to trade fx spot continously without predetermined future delivery time INDEX | Index | Statistical composite that measures changes in the economy or markets. CREDIT | Credit/Funding | Margin funding contract. Order book displays lending offers and borrow bids. Price represents the daily rate. CONTRACT | Contract | Represents other types of financial instruments *(e.g. spreads, interest rate swap)*              ### Additional output variables for `symbol_type = INDEX`              Variable | Description --------- | ----------- index_id | Index identifier index_display_name | Human readable name of the index *(optional)* index_display_description | Description of the index *(optional)*              ### Additional output variables for `symbol_type = FUTURES`              Variable | Description --------- | ----------- future_delivery_time | Predetermined time of futures contract delivery date in ISO 8601 future_contract_unit | Contact size *(eg. 10 BTC if `future_contract_unit` = `10` and `future_contract_unit_asset` = `BTC`)* future_contract_unit_asset | Identifier of the asset used to denominate the contract unit              ### Additional output variables for `symbol_type = PERPETUAL`              Variable | Description --------- | ----------- future_contract_unit | Contact size *(eg. 10 BTC if `future_contract_unit` = `10` and `future_contract_unit_asset` = `BTC`)* future_contract_unit_asset | Identifier of the asset used to denominate the contract unit              ### Additional output variables for `symbol_type = OPTION`              Variable | Description --------- | ----------- option_type_is_call | Boolean value representing option type. `true` for Call options, `false` for Put options option_strike_price | Price at which option contract can be exercised option_contract_unit | Base asset amount of underlying spot which single option represents option_exercise_style | Option exercise style. Can be `EUROPEAN` or `AMERICAN` option_expiration_time | Option contract expiration time in ISO 8601              ### Additional output variables for `symbol_type = CONTRACT`              Variable | Description --------- | ----------- contract_delivery_time | Predetermined time of contract delivery date in ISO 8601 contract_unit | Contact size *(eg. 10 BTC if `contract_unit` = `10` and `contract_unit_asset` = `BTC`)* contract_unit_asset | Identifier of the asset used to denominate the contract unit contract_id | Identifier of contract by the exchange

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MetadataApi;
my $api_instance = WWW::OpenAPIClient::MetadataApi->new(

    # Configure API key authorization: APIKey
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
    # Configure bearer access token for authorization: JWT
    access_token => 'YOUR_BEARER_TOKEN',
    
);

my $filter_symbol_id = "filter_symbol_id_example"; # string | Comma or semicolon delimited parts of symbol identifier used to filter response. (optional, eg. `BITSTAMP`_ or `BINANCE_SPOT_`)
my $filter_exchange_id = "filter_exchange_id_example"; # string | The filter for exchange ID.
my $filter_asset_id = "filter_asset_id_example"; # string | The filter for asset ID.

eval {
    my $result = $api_instance->v1_symbols_get(filter_symbol_id => $filter_symbol_id, filter_exchange_id => $filter_exchange_id, filter_asset_id => $filter_asset_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MetadataApi->v1_symbols_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_symbol_id** | **string**| Comma or semicolon delimited parts of symbol identifier used to filter response. (optional, eg. &#x60;BITSTAMP&#x60;_ or &#x60;BINANCE_SPOT_&#x60;) | [optional] 
 **filter_exchange_id** | **string**| The filter for exchange ID. | [optional] 
 **filter_asset_id** | **string**| The filter for asset ID. | [optional] 

### Return type

[**ARRAY[V1Symbol]**](V1Symbol.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_symbols_map_exchange_id_get**
> ARRAY[V1SymbolMapping] v1_symbols_map_exchange_id_get(exchange_id => $exchange_id)

List symbol mapping for the exchange

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MetadataApi;
my $api_instance = WWW::OpenAPIClient::MetadataApi->new(

    # Configure API key authorization: APIKey
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
    # Configure bearer access token for authorization: JWT
    access_token => 'YOUR_BEARER_TOKEN',
    
);

my $exchange_id = "exchange_id_example"; # string | The ID of the exchange (from the Metadata -> Exchanges)

eval {
    my $result = $api_instance->v1_symbols_map_exchange_id_get(exchange_id => $exchange_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MetadataApi->v1_symbols_map_exchange_id_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **string**| The ID of the exchange (from the Metadata -&gt; Exchanges) | 

### Return type

[**ARRAY[V1SymbolMapping]**](V1SymbolMapping.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

