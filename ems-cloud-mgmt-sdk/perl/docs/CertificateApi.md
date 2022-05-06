# WWW::OpenAPIClient::CertificateApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::CertificateApi;
```

All URIs are relative to *https://ems-mgmt-sandbox.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**certificate**](CertificateApi.md#certificate) | **GET** /v1/certificate/pem | Get authentication certificate


# **certificate**
> string certificate()

Get authentication certificate

Providing PEM file with the Private Key, Public Key and the Certificate to authenticate to the EMS API.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CertificateApi;
my $api_instance = WWW::OpenAPIClient::CertificateApi->new(

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
    my $result = $api_instance->certificate();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CertificateApi->certificate: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**string**

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

