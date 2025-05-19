# Documentation for FX Realtime REST API v1 Tizen Client SDK

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
├── SDK                       \\Documentation for all classes in FX Realtime REST API Tizen Client SDK. See ./html/index.html
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
All URIs are relative to https://api-realtime.fx.finfeedapi.comhttps://api-realtime.fx.finfeedapi.com


### ExchangeRatesManager
Method | HTTP request | Description
------------- | ------------- | -------------
*get specific rateSync* | *GET* /v1/exchangerate/{asset_id_base}/{asset_id_quote} | Get specific rate.
*get specific rateASync* | *GET* /v1/exchangerate/{asset_id_base}/{asset_id_quote} | Get specific rate.
*v1ExchangerateAssetIdBaseGetSync* | *GET* /v1/exchangerate/{asset_id_base} | Get all current rates.
*v1ExchangerateAssetIdBaseGetASync* | *GET* /v1/exchangerate/{asset_id_base} | Get all current rates.


### MetadataManager
Method | HTTP request | Description
------------- | ------------- | -------------
*v1AssetsAssetIdGetSync* | *GET* /v1/assets/{asset_id} | List all assets by asset ID.
*v1AssetsAssetIdGetASync* | *GET* /v1/assets/{asset_id} | List all assets by asset ID.
*v1AssetsGetSync* | *GET* /v1/assets | List all assets.
*v1AssetsGetASync* | *GET* /v1/assets | List all assets.
*v1AssetsIconsSizeGetSync* | *GET* /v1/assets/icons/{size} | List all asset icons.
*v1AssetsIconsSizeGetASync* | *GET* /v1/assets/icons/{size} | List all asset icons.


## What are the Model files for the data structures/objects?
Class | Description
------------- | -------------
 *V1.Asset* | Represents an asset.
 *V1.ChainNetworkAddress* | Contains information about assets' chain network addresses
 *V1.ExchangeRate* | Represents an exchange rate.
 *V1.ExchangeRates* | Represents exchange rates for a specific base asset.
 *V1.ExchangeRatesRate* | Represents an exchange rate within a collection of exchange rates.
 *V1.Icon* | Represents an icon.

