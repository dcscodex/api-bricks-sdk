# 

No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

This Groovy package, using the [http-builder-ng library](https://http-builder-ng.github.io/http-builder-ng/), is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: v1
- Package version: v1
- Build date: 2025-06-16T09:41:09.886871040Z[Etc/UTC]
- Generator version: 7.13.0
- Build package: org.openapitools.codegen.languages.GroovyClientCodegen
For more information, please visit [https://www.coinapi.io](https://www.coinapi.io)

## Requirements

* Groovy 2.5.7
* Gradle 4.9

## Build

First, create the gradle wrapper script:

```
gradle wrapper
```

Then, run:

```
./gradlew check assemble
```

## Getting Started


```groovy
def apiInstance = new ContentExtractionApi()
def accessionNumber = "accessionNumber_example" // String | The SEC filing accession number used to retrieve the filing from EDGAR database.
def type = DTOExtractorType.fromValue("text") // DTOExtractorType | Result type (text or html, default: text)

apiInstance.v1ExtractorGet(accessionNumber, type)
    {
    // on success
    def result = (Map&lt;String, Object&gt;)it
    println result
    
}
    {
    // on failure
    statusCode, message ->
        println "${statusCode} ${message}"
};
```

