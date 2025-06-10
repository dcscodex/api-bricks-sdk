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

import org.openapitools.client.api.ExchangeRatesApi;

public class ExchangeRatesApiExample {

    public static void main(String[] args) {
        ExchangeRatesApi apiInstance = new ExchangeRatesApi();
        String assetIdBase = null; // String | Requested exchange rate base asset identifier (from the Metadata -> Assets)
        String assetIdQuote = null; // String | Requested exchange rate quote asset identifier (from the Metadata -> Assets)
        try {
            V1ExchangeRate result = apiInstance.getSpecificRate(assetIdBase, assetIdQuote);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling ExchangeRatesApi#getSpecificRate");
            e.printStackTrace();
        }
    }
}

```

## Documentation for API Endpoints

All URIs are relative to *https://api-realtime.fx.finfeedapi.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*ExchangeRatesApi* | [**getSpecificRate**](docs/ExchangeRatesApi.md#getSpecificRate) | **GET** /v1/exchangerate/{asset_id_base}/{asset_id_quote} | Get specific rate
*ExchangeRatesApi* | [**v1ExchangerateAssetIdBaseGet**](docs/ExchangeRatesApi.md#v1ExchangerateAssetIdBaseGet) | **GET** /v1/exchangerate/{asset_id_base} | Get all current rates
*MetadataApi* | [**v1AssetsAssetIdGet**](docs/MetadataApi.md#v1AssetsAssetIdGet) | **GET** /v1/assets/{asset_id} | List all assets by asset ID
*MetadataApi* | [**v1AssetsGet**](docs/MetadataApi.md#v1AssetsGet) | **GET** /v1/assets | List all assets
*MetadataApi* | [**v1AssetsIconsSizeGet**](docs/MetadataApi.md#v1AssetsIconsSizeGet) | **GET** /v1/assets/icons/{size} | List all asset icons


## Documentation for Models

 - [V1Asset](docs/V1Asset.md)
 - [V1ChainNetworkAddress](docs/V1ChainNetworkAddress.md)
 - [V1ExchangeRate](docs/V1ExchangeRate.md)
 - [V1ExchangeRates](docs/V1ExchangeRates.md)
 - [V1ExchangeRatesRate](docs/V1ExchangeRatesRate.md)
 - [V1Icon](docs/V1Icon.md)


## Documentation for Authorization

Authentication schemes defined for the API:
### APIKey

- **Type**: API key

- **API key parameter name**: Authorization
- **Location**: HTTP header

### JWT

- **Type**: API key

- **API key parameter name**: Authorization
- **Location**: HTTP header


## Recommendation

It's recommended to create an instance of `ApiClient` per thread in a multithreaded environment to avoid any potential issues.

## Author

support@apibricks.io

