# org.openapitools.client - Kotlin client library for EMS - Managed Cloud REST API

## Requires

* Kotlin 1.4.30
* Gradle 6.8.3

## Build

First, create the gradle wrapper script:

```
gradle wrapper
```

Then, run:

```
./gradlew check assemble
```

This runs all tests and packages the library.

## Features/Implementation Notes

* Supports JSON inputs/outputs, File inputs, and Form inputs.
* Supports collection formats for query parameters: csv, tsv, ssv, pipes.
* Some Kotlin and Java types are fully qualified to avoid conflicts with types defined in OpenAPI definitions.
* Implementation of ApiClient is intended to reduce method counts, specifically to benefit Android targets.

<a name="documentation-for-api-endpoints"></a>
## Documentation for API Endpoints

All URIs are relative to *https://ems-mgmt-sandbox.coinapi.io*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AccountApi* | [**deleteAccount**](docs/AccountApi.md#deleteaccount) | **DELETE** /v1/accounts | Delete account
*AccountApi* | [**deleteAccountAll**](docs/AccountApi.md#deleteaccountall) | **DELETE** /v1/accounts/all | Delete all accounts
*AccountApi* | [**getAccount**](docs/AccountApi.md#getaccount) | **GET** /v1/accounts | Get accounts
*AccountApi* | [**persistAccount**](docs/AccountApi.md#persistaccount) | **POST** /v1/accounts | Add or update account
*CertificateApi* | [**certificate**](docs/CertificateApi.md#certificate) | **GET** /v1/certificate/pem | Get authentication certificate
*EndpointsApi* | [**endpoints**](docs/EndpointsApi.md#endpoints) | **GET** /v1/endpoints | Get API endpoints
*ExchangeApi* | [**exchangeLoginRequire**](docs/ExchangeApi.md#exchangeloginrequire) | **GET** /v1/exchanges | Get exchange configuration
*LocationApi* | [**locations**](docs/LocationApi.md#locations) | **GET** /v1/locations | Get site locations


<a name="documentation-for-models"></a>
## Documentation for Models

 - [org.openapitools.client.models.AccountData](docs/AccountData.md)
 - [org.openapitools.client.models.AccountEndpoint](docs/AccountEndpoint.md)
 - [org.openapitools.client.models.AccountInfo](docs/AccountInfo.md)
 - [org.openapitools.client.models.ExchangeLoginRequire](docs/ExchangeLoginRequire.md)
 - [org.openapitools.client.models.GetAccount](docs/GetAccount.md)
 - [org.openapitools.client.models.KeyValue](docs/KeyValue.md)
 - [org.openapitools.client.models.Locations](docs/Locations.md)
 - [org.openapitools.client.models.UpdateAccount](docs/UpdateAccount.md)


<a name="documentation-for-authorization"></a>
## Documentation for Authorization

<a name="APIKeyHeader"></a>
### APIKeyHeader

- **Type**: API key
- **API key parameter name**: X-CoinAPI-Key
- **Location**: HTTP header

<a name="APIKeyQueryParam"></a>
### APIKeyQueryParam

- **Type**: API key
- **API key parameter name**: apikey
- **Location**: URL query string

