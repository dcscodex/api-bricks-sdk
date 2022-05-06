# Documentation for EMS - Managed Cloud REST API v1 Tizen Client SDK

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
├── SDK                       \\Documentation for all classes in EMS - Managed Cloud REST API Tizen Client SDK. See ./html/index.html
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
All URIs are relative to https://ems-mgmt-sandbox.coinapi.iohttps://ems-mgmt-sandbox.coinapi.io


### AccountManager
Method | HTTP request | Description
------------- | ------------- | -------------
*deleteAccountSync* | *DELETE* /v1/accounts | Delete account.
*deleteAccountASync* | *DELETE* /v1/accounts | Delete account.
*deleteAccountAllSync* | *DELETE* /v1/accounts/all | Delete all accounts.
*deleteAccountAllASync* | *DELETE* /v1/accounts/all | Delete all accounts.
*getAccountSync* | *GET* /v1/accounts | Get accounts.
*getAccountASync* | *GET* /v1/accounts | Get accounts.
*persistAccountSync* | *POST* /v1/accounts | Add or update account.
*persistAccountASync* | *POST* /v1/accounts | Add or update account.


### CertificateManager
Method | HTTP request | Description
------------- | ------------- | -------------
*certificateSync* | *GET* /v1/certificate/pem | Get authentication certificate.
*certificateASync* | *GET* /v1/certificate/pem | Get authentication certificate.


### EndpointsManager
Method | HTTP request | Description
------------- | ------------- | -------------
*endpointsSync* | *GET* /v1/endpoints | Get API endpoints.
*endpointsASync* | *GET* /v1/endpoints | Get API endpoints.


### ExchangeManager
Method | HTTP request | Description
------------- | ------------- | -------------
*exchangeLoginRequireSync* | *GET* /v1/exchanges | Get exchange configuration.
*exchangeLoginRequireASync* | *GET* /v1/exchanges | Get exchange configuration.


### LocationManager
Method | HTTP request | Description
------------- | ------------- | -------------
*locationsSync* | *GET* /v1/locations | Get site locations.
*locationsASync* | *GET* /v1/locations | Get site locations.


## What are the Model files for the data structures/objects?
Class | Description
------------- | -------------
 *AccountData* | 
 *AccountEndpoint* | 
 *AccountInfo* | 
 *ExchangeLoginRequire* | 
 *GetAccount* | 
 *KeyValue* | Key Value pair used to configure exchange accounts.
 *Locations* | 
 *UpdateAccount* | 

