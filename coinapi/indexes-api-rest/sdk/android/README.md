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

import org.openapitools.client.api.IndexesApi;

public class IndexesApiExample {

    public static void main(String[] args) {
        IndexesApi apiInstance = new IndexesApi();
        String indexDefinitionId = null; // String | 
        try {
            List<IndexesIndexDefinitionInputData> result = apiInstance.v1IndexdefInputDataIndexDefinitionIdAllGet(indexDefinitionId);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling IndexesApi#v1IndexdefInputDataIndexDefinitionIdAllGet");
            e.printStackTrace();
        }
    }
}

```

## Documentation for API Endpoints

All URIs are relative to *https://rest-api.indexes.coinapi.io*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*IndexesApi* | [**v1IndexdefInputDataIndexDefinitionIdAllGet**](docs/IndexesApi.md#v1IndexdefInputDataIndexDefinitionIdAllGet) | **GET** /v1/indexdef/input-data/{index_definition_id}/all | Returns all data inputs for a specific index definition
*IndexesApi* | [**v1IndexdefInputDataIndexDefinitionIdGet**](docs/IndexesApi.md#v1IndexdefInputDataIndexDefinitionIdGet) | **GET** /v1/indexdef/input-data/{index_definition_id} | Returns data inputs for certain index definition and time
*IndexesApi* | [**v1IndexdefMultiassetGet**](docs/IndexesApi.md#v1IndexdefMultiassetGet) | **GET** /v1/indexdef/multiasset | Get all multi-asset weights
*IndexesApi* | [**v1IndexdefMultiassetIndexIdGet**](docs/IndexesApi.md#v1IndexdefMultiassetIndexIdGet) | **GET** /v1/indexdef/multiasset/{index_id} | Get multi-asset weights for specific index
*IndexesApi* | [**v1IndexesGet**](docs/IndexesApi.md#v1IndexesGet) | **GET** /v1/indexes | List indexes
*IndexesApi* | [**v1IndexesIndexDefinitionIdCurrentSnapshotGet**](docs/IndexesApi.md#v1IndexesIndexDefinitionIdCurrentSnapshotGet) | **GET** /v1/indexes/{index_definition_id}/currentSnapshot | Current Index Values for index definition
*IndexesApi* | [**v1IndexesIndexDefinitionIdHistorySnapshotGet**](docs/IndexesApi.md#v1IndexesIndexDefinitionIdHistorySnapshotGet) | **GET** /v1/indexes/{index_definition_id}/historySnapshot | Historical Index Values for index definition
*IndexesApi* | [**v1IndexesIndexIdCurrentGet**](docs/IndexesApi.md#v1IndexesIndexIdCurrentGet) | **GET** /v1/indexes/{index_id}/current | Current Index Value
*IndexesApi* | [**v1IndexesIndexIdHistoryGet**](docs/IndexesApi.md#v1IndexesIndexIdHistoryGet) | **GET** /v1/indexes/{index_id}/history | Historical Index Value w/Composition
*IndexesApi* | [**v1IndexesIndexIdTimeseriesGet**](docs/IndexesApi.md#v1IndexesIndexIdTimeseriesGet) | **GET** /v1/indexes/{index_id}/timeseries | Timeseries Index Value
*MetadataApi* | [**apiMetadataExchangesExchangeIdGet**](docs/MetadataApi.md#apiMetadataExchangesExchangeIdGet) | **GET** /api/metadata/exchanges/{exchange_id} | List all exchanges by exchange_id
*MetadataApi* | [**apiMetadataExchangesGet**](docs/MetadataApi.md#apiMetadataExchangesGet) | **GET** /api/metadata/exchanges | List all exchanges
*PeriodsApi* | [**v1MetadataPeriodsGet**](docs/PeriodsApi.md#v1MetadataPeriodsGet) | **GET** /v1/metadata/periods | List all periods


## Documentation for Models

 - [IndexesIndexDefinitionInputData](docs/IndexesIndexDefinitionInputData.md)
 - [IndexesIndexDefinitionSnapshotEntry](docs/IndexesIndexDefinitionSnapshotEntry.md)
 - [IndexesIndexIdentifier](docs/IndexesIndexIdentifier.md)
 - [IndexesIndexMultiAssetWeight](docs/IndexesIndexMultiAssetWeight.md)
 - [IndexesIndexTimeseriesItem](docs/IndexesIndexTimeseriesItem.md)
 - [IndexesIndexValue](docs/IndexesIndexValue.md)
 - [IndexesIndexValueComponent](docs/IndexesIndexValueComponent.md)
 - [MetadataExchange](docs/MetadataExchange.md)
 - [MetadataTimeseriesPeriod](docs/MetadataTimeseriesPeriod.md)


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

