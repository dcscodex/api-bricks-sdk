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

import org.openapitools.client.api.ContentExtractionApi;

public class ContentExtractionApiExample {

    public static void main(String[] args) {
        ContentExtractionApi apiInstance = new ContentExtractionApi();
        String accessionNumber = null; // String | The SEC filing accession number used to retrieve the filing from EDGAR database.
        DTOExtractorType type = null; // DTOExtractorType | Result type (text or html, default: text)
        try {
            Map<String, OasAnyTypeNotMapped> result = apiInstance.v1ExtractorGet(accessionNumber, type);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling ContentExtractionApi#v1ExtractorGet");
            e.printStackTrace();
        }
    }
}

```

## Documentation for API Endpoints

All URIs are relative to *https://api.sec.finfeedapi.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*ContentExtractionApi* | [**v1ExtractorGet**](docs/ContentExtractionApi.md#v1ExtractorGet) | **GET** /v1/extractor | Extract and classify SEC filing content
*ContentExtractionApi* | [**v1ExtractorItemGet**](docs/ContentExtractionApi.md#v1ExtractorItemGet) | **GET** /v1/extractor/item | Extract specific item content from SEC filing
*FileDownloadApi* | [**v1DownloadGet**](docs/FileDownloadApi.md#v1DownloadGet) | **GET** /v1/download | Download file from SEC EDGAR archive
*FilingMetadataApi* | [**v1FilingsGet**](docs/FilingMetadataApi.md#v1FilingsGet) | **GET** /v1/filings | Query SEC filing metadata
*FullTextSearchApi* | [**v1FullTextGet**](docs/FullTextSearchApi.md#v1FullTextGet) | **GET** /v1/full-text | Full-text search of SEC filing documents
*XBRLConversionApi* | [**v1XbrlConverterGet**](docs/XBRLConversionApi.md#v1XbrlConverterGet) | **GET** /v1/xbrl-converter | Convert XBRL data to JSON format


## Documentation for Models

 - [DTOExtractorType](docs/DTOExtractorType.md)
 - [DTOFilingMetadataDto](docs/DTOFilingMetadataDto.md)
 - [DTOFilingSortBy](docs/DTOFilingSortBy.md)
 - [DTOSecFilingResultDto](docs/DTOSecFilingResultDto.md)
 - [MvcProblemDetails](docs/MvcProblemDetails.md)
 - [MvcValidationProblemDetails](docs/MvcValidationProblemDetails.md)


## Documentation for Authorization

Authentication schemes defined for the API:
### APIKey

- **Type**: API key

- **API key parameter name**: Authorization
- **Location**: HTTP header

### JWT

- **Type**: HTTP Bearer Token authentication (JWT)


## Recommendation

It's recommended to create an instance of `ApiClient` per thread in a multithreaded environment to avoid any potential issues.

## Author

support@apibricks.io

