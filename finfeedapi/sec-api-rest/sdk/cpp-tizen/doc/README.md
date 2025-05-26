# Documentation for REST API v1 Tizen Client SDK

## How do I get the doc files?
First generate source code by running `openapi-generator`
Then run `doc/generateDocumentation.sh` from the output folder. It will generate all the doc files and put them in the `doc/SDK` directory.
To successfully generate documentation it needs `Doxygen` installed in the path.
*Note* - Before generating the documentation, put the logo of the project as the file `doc/logo.png` before running `doxygen`.


## How do I use this?
This is the structure of the doc folder:

```
.
├── logo.png                  \\Logo of the project
├── Doxyfile                  \\Doxygen config files
├── generateDocumentation.sh  \\Script to run to generate documentation
├── README.md                 \\This file
├── SDK                       \\Documentation for all classes in REST API Tizen Client SDK. See ./html/index.html
│   └── html

```

## *tl;dr* run this:

```
doc/generateDocumentation.sh
```

The above SDK folder will be generated. See the index.html inside the SDK folder.


## What's Doxygen?
Doxygen is the de facto standard tool for generating/extracting documentation from annotated/unannotated C++ sources, but it also supports other popular programming languages such as C, Objective-C, C#, PHP, Java, Python, IDL (Corba, Microsoft, and UNO/OpenOffice flavors), Fortran, VHDL, Tcl, and to some extent D.

Check out [Doxygen](https://www.doxygen.org/) for additional information about the Doxygen project.

## I Don't want to run Doxygen. What are the API files for accessing the REST endpoints?
All URIs are relative to https://api-historical.sec.finfeedapi.comhttps://api-historical.sec.finfeedapi.com


### ContentExtractionManager
Method | HTTP request | Description
------------- | ------------- | -------------
*v1ExtractorGetSync* | *GET* /v1/extractor | Extract and classify SEC filing content.
*v1ExtractorGetASync* | *GET* /v1/extractor | Extract and classify SEC filing content.
*v1ExtractorItemGetSync* | *GET* /v1/extractor/item | Extract specific item content from SEC filing.
*v1ExtractorItemGetASync* | *GET* /v1/extractor/item | Extract specific item content from SEC filing.


### FilingMetadataManager
Method | HTTP request | Description
------------- | ------------- | -------------
*v1FilingsGetSync* | *GET* /v1/filings | Query SEC filing metadata.
*v1FilingsGetASync* | *GET* /v1/filings | Query SEC filing metadata.


### FullTextSearchManager
Method | HTTP request | Description
------------- | ------------- | -------------
*v1FullTextGetSync* | *GET* /v1/full-text | Full-text search of SEC filing documents.
*v1FullTextGetASync* | *GET* /v1/full-text | Full-text search of SEC filing documents.


### XBRLConversionManager
Method | HTTP request | Description
------------- | ------------- | -------------
*v1XbrlConverterGetSync* | *GET* /v1/xbrl-converter | Convert XBRL data to JSON format.
*v1XbrlConverterGetASync* | *GET* /v1/xbrl-converter | Convert XBRL data to JSON format.


## What are the Model files for the data structures/objects?
Class | Description
------------- | -------------
 *DTO.ExtractorType* | 
 *DTO.FilingMetadataDto* | Represents the response for a single SEC filing metadata record.  Maps fields from the edgar_submissions table.
 *DTO.FilingSortBy* | Defines sorting options for the filing query.
 *DTO.SecFilingResultDto* | 
 *Mvc.ProblemDetails* | 
 *Mvc.ValidationProblemDetails* | 

