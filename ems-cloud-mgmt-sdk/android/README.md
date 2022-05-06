# openapi-android-client

## Requirements

Building the API client library requires [Maven](https://maven.apache.org/) to be installed.

## Installation

To install the API client library to your local Maven repository, simply execute:

```shell
mvn install
```

To deploy it to a remote Maven repository instead, configure the settings of the repository and execute:

```shell
mvn deploy
```

Refer to the [official documentation](https://maven.apache.org/plugins/maven-deploy-plugin/usage.html) for more information.

### Maven users

Add this dependency to your project's POM:

```xml
<dependency>
    <groupId>org.openapitools</groupId>
    <artifactId>openapi-android-client</artifactId>
    <version>1.0.0</version>
    <scope>compile</scope>
</dependency>
```

### Gradle users

Add this dependency to your project's build file:

```groovy
compile "org.openapitools:openapi-android-client:1.0.0"
```

### Others

At first generate the JAR by executing:

    mvn package

Then manually install the following JARs:

- target/openapi-android-client-1.0.0.jar
- target/lib/*.jar

## Getting Started

Please follow the [installation](#installation) instruction and execute the following Java code:

```java

import org.openapitools.client.api.AccountApi;

public class AccountApiExample {

    public static void main(String[] args) {
        AccountApi apiInstance = new AccountApi();
        List<String> exchangeId = null; // List<String> | Exchange identifier of the account to delete
        try {
            apiInstance.deleteAccount(exchangeId);
        } catch (ApiException e) {
            System.err.println("Exception when calling AccountApi#deleteAccount");
            e.printStackTrace();
        }
    }
}

```

## Documentation for API Endpoints

All URIs are relative to *https://ems-mgmt-sandbox.coinapi.io*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AccountApi* | [**deleteAccount**](docs/AccountApi.md#deleteAccount) | **DELETE** /v1/accounts | Delete account
*AccountApi* | [**deleteAccountAll**](docs/AccountApi.md#deleteAccountAll) | **DELETE** /v1/accounts/all | Delete all accounts
*AccountApi* | [**getAccount**](docs/AccountApi.md#getAccount) | **GET** /v1/accounts | Get accounts
*AccountApi* | [**persistAccount**](docs/AccountApi.md#persistAccount) | **POST** /v1/accounts | Add or update account
*CertificateApi* | [**certificate**](docs/CertificateApi.md#certificate) | **GET** /v1/certificate/pem | Get authentication certificate
*EndpointsApi* | [**endpoints**](docs/EndpointsApi.md#endpoints) | **GET** /v1/endpoints | Get API endpoints
*ExchangeApi* | [**exchangeLoginRequire**](docs/ExchangeApi.md#exchangeLoginRequire) | **GET** /v1/exchanges | Get exchange configuration
*LocationApi* | [**locations**](docs/LocationApi.md#locations) | **GET** /v1/locations | Get site locations


## Documentation for Models

 - [AccountData](docs/AccountData.md)
 - [AccountEndpoint](docs/AccountEndpoint.md)
 - [AccountInfo](docs/AccountInfo.md)
 - [ExchangeLoginRequire](docs/ExchangeLoginRequire.md)
 - [GetAccount](docs/GetAccount.md)
 - [KeyValue](docs/KeyValue.md)
 - [Locations](docs/Locations.md)
 - [UpdateAccount](docs/UpdateAccount.md)


## Documentation for Authorization

Authentication schemes defined for the API:
### APIKeyHeader

- **Type**: API key

- **API key parameter name**: X-CoinAPI-Key
- **Location**: HTTP header

### APIKeyQueryParam

- **Type**: API key

- **API key parameter name**: apikey
- **Location**: URL query string


## Recommendation

It's recommended to create an instance of `ApiClient` per thread in a multithreaded environment to avoid any potential issues.

## Author

support@coinapi.io

