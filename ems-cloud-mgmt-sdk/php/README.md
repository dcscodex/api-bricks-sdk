# OpenAPIClient-php

This section will provide necessary information about the `CoinAPI EMS Managed Cloud REST API` protocol. 
<br/><br/>
This API is used to manage the overall deployment of **Execution Management System API** (`EMS API`) software, 
which means that in this API, you define the accounts, credentials, and configurations for the order destinations or identify the CoinAPI endpoints where you need to connect to access the `EMS API`. 
<br/><br/>
Implemented Standards:

 * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)
 * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)
 * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540)
 
### Endpoints
<table>
  <thead>
    <tr>
      <th>Environment</th>
      <th>Url</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Production</td>
      <td><code>https://ems-mgmt.coinapi.io/</code></td>
    </tr>
    <tr>
      <td>Sandbox</td>
      <td><code>https://ems-mgmt-sandbox.coinapi.io/</code></td>
    </tr>
  </tbody>
</table>

### Authentication

To use resources that require authorized access, you will need to provide an API key to us when making HTTP requests.

There are 2 methods for passing the API key to us, you only need to use one:

 1. Custom authorization header named `X-CoinAPI-Key`
 2. Query string parameter named `apikey`

#### Custom authorization header

You can authorize by providing additional custom header named `X-CoinAPI-Key` and API key as its value.

Assuming that your API key is `73034021-THIS-IS-SAMPLE-KEY`, then the authorization header you should send to us will look like:
<br/><br/>
`X-CoinAPI-Key: 73034021-THIS-IS-SAMPLE-KEY`

<aside class=\"success\">This method is recommended by us and you should use it in production environments.</aside>

#### Query string authorization parameter

You can authorize by providing an additional parameter named `apikey` with a value equal to your API key in the query string of your HTTP request.

Assuming that your API key is `73034021-THIS-IS-SAMPLE-KEY` and that you want to request all accounts, then your query string should look like this: 
<br/><br/>
`GET /v1/accounts?apikey=73034021-THIS-IS-SAMPLE-KEY`

<aside class=\"notice\">
Query string method may be more practical for development activities.
</aside>


For more information, please visit [https://www.coinapi.io](https://www.coinapi.io).

## Installation & Usage

### Requirements

PHP 7.3 and later.
Should also work with PHP 8.0 but has not been tested.

### Composer

To install the bindings via [Composer](https://getcomposer.org/), add the following to `composer.json`:

```json
{
  "repositories": [
    {
      "type": "vcs",
      "url": "https://github.com/GIT_USER_ID/GIT_REPO_ID.git"
    }
  ],
  "require": {
    "GIT_USER_ID/GIT_REPO_ID": "*@dev"
  }
}
```

Then run `composer install`

### Manual Installation

Download the files and include `autoload.php`:

```php
<?php
require_once('/path/to/OpenAPIClient-php/vendor/autoload.php');
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



// Configure API key authorization: APIKeyHeader
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('X-CoinAPI-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-CoinAPI-Key', 'Bearer');

// Configure API key authorization: APIKeyQueryParam
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('apikey', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('apikey', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\AccountApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$exchange_id = array('exchange_id_example'); // string[] | Exchange identifier of the account to delete

try {
    $apiInstance->deleteAccount($exchange_id);
} catch (Exception $e) {
    echo 'Exception when calling AccountApi->deleteAccount: ', $e->getMessage(), PHP_EOL;
}

```

## API Endpoints

All URIs are relative to *https://ems-mgmt-sandbox.coinapi.io*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AccountApi* | [**deleteAccount**](docs/Api/AccountApi.md#deleteaccount) | **DELETE** /v1/accounts | Delete account
*AccountApi* | [**deleteAccountAll**](docs/Api/AccountApi.md#deleteaccountall) | **DELETE** /v1/accounts/all | Delete all accounts
*AccountApi* | [**getAccount**](docs/Api/AccountApi.md#getaccount) | **GET** /v1/accounts | Get accounts
*AccountApi* | [**persistAccount**](docs/Api/AccountApi.md#persistaccount) | **POST** /v1/accounts | Add or update account
*CertificateApi* | [**certificate**](docs/Api/CertificateApi.md#certificate) | **GET** /v1/certificate/pem | Get authentication certificate
*EndpointsApi* | [**endpoints**](docs/Api/EndpointsApi.md#endpoints) | **GET** /v1/endpoints | Get API endpoints
*ExchangeApi* | [**exchangeLoginRequire**](docs/Api/ExchangeApi.md#exchangeloginrequire) | **GET** /v1/exchanges | Get exchange configuration
*LocationApi* | [**locations**](docs/Api/LocationApi.md#locations) | **GET** /v1/locations | Get site locations

## Models

- [AccountData](docs/Model/AccountData.md)
- [AccountEndpoint](docs/Model/AccountEndpoint.md)
- [AccountInfo](docs/Model/AccountInfo.md)
- [ExchangeLoginRequire](docs/Model/ExchangeLoginRequire.md)
- [GetAccount](docs/Model/GetAccount.md)
- [KeyValue](docs/Model/KeyValue.md)
- [Locations](docs/Model/Locations.md)
- [UpdateAccount](docs/Model/UpdateAccount.md)

## Authorization

### APIKeyHeader

- **Type**: API key
- **API key parameter name**: X-CoinAPI-Key
- **Location**: HTTP header



### APIKeyQueryParam

- **Type**: API key
- **API key parameter name**: apikey
- **Location**: URL query string


## Tests

To run the tests, use:

```bash
composer install
vendor/bin/phpunit
```

## Author

support@coinapi.io

## About this package

This PHP package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: `v1`
- Build package: `org.openapitools.codegen.languages.PhpClientCodegen`
