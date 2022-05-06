# WWW::OpenAPIClient::AccountApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::AccountApi;
```

All URIs are relative to *https://ems-mgmt-sandbox.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_account**](AccountApi.md#delete_account) | **DELETE** /v1/accounts | Delete account
[**delete_account_all**](AccountApi.md#delete_account_all) | **DELETE** /v1/accounts/all | Delete all accounts
[**get_account**](AccountApi.md#get_account) | **GET** /v1/accounts | Get accounts
[**persist_account**](AccountApi.md#persist_account) | **POST** /v1/accounts | Add or update account


# **delete_account**
> delete_account(exchange_id => $exchange_id)

Delete account

Delete specific exchange account maintained by the EMS API for your subscription.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::AccountApi;
my $api_instance = WWW::OpenAPIClient::AccountApi->new(

    # Configure API key authorization: APIKeyHeader
    api_key => {'X-CoinAPI-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'X-CoinAPI-Key' => 'Bearer'},
    # Configure API key authorization: APIKeyQueryParam
    api_key => {'apikey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apikey' => 'Bearer'},
);

my $exchange_id = [("null")]; # ARRAY[string] | Exchange identifier of the account to delete

eval {
    $api_instance->delete_account(exchange_id => $exchange_id);
};
if ($@) {
    warn "Exception when calling AccountApi->delete_account: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | [**ARRAY[string]**](string.md)| Exchange identifier of the account to delete | 

### Return type

void (empty response body)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_account_all**
> delete_account_all()

Delete all accounts

Delete all exchange accounts maintained by the EMS API for your subscription.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::AccountApi;
my $api_instance = WWW::OpenAPIClient::AccountApi->new(

    # Configure API key authorization: APIKeyHeader
    api_key => {'X-CoinAPI-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'X-CoinAPI-Key' => 'Bearer'},
    # Configure API key authorization: APIKeyQueryParam
    api_key => {'apikey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apikey' => 'Bearer'},
);


eval {
    $api_instance->delete_account_all();
};
if ($@) {
    warn "Exception when calling AccountApi->delete_account_all: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_account**
> ARRAY[GetAccount] get_account(filter_exchange_id => $filter_exchange_id)

Get accounts

Get all accounts maintained for your subscription in the EMS API.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::AccountApi;
my $api_instance = WWW::OpenAPIClient::AccountApi->new(

    # Configure API key authorization: APIKeyHeader
    api_key => {'X-CoinAPI-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'X-CoinAPI-Key' => 'Bearer'},
    # Configure API key authorization: APIKeyQueryParam
    api_key => {'apikey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apikey' => 'Bearer'},
);

my $filter_exchange_id = [("null")]; # ARRAY[string] | Exchange id of the specific account to provide single account instead of the list of all accounts

eval {
    my $result = $api_instance->get_account(filter_exchange_id => $filter_exchange_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AccountApi->get_account: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_exchange_id** | [**ARRAY[string]**](string.md)| Exchange id of the specific account to provide single account instead of the list of all accounts | [optional] 

### Return type

[**ARRAY[GetAccount]**](GetAccount.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **persist_account**
> persist_account(body => $body)

Add or update account

Add new or update existing exchange account for your subscription in the EMS API.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::AccountApi;
my $api_instance = WWW::OpenAPIClient::AccountApi->new(

    # Configure API key authorization: APIKeyHeader
    api_key => {'X-CoinAPI-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'X-CoinAPI-Key' => 'Bearer'},
    # Configure API key authorization: APIKeyQueryParam
    api_key => {'apikey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apikey' => 'Bearer'},
);

my $body = WWW::OpenAPIClient::Object::AccountData->new(); # AccountData | Exchange account object that needs to be add/update to the EMS

eval {
    $api_instance->persist_account(body => $body);
};
if ($@) {
    warn "Exception when calling AccountApi->persist_account: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AccountData**](AccountData.md)| Exchange account object that needs to be add/update to the EMS | 

### Return type

void (empty response body)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

