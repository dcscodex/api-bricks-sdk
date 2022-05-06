# EMS - Managed Cloud REST API API Client


This section will provide necessary information about the `CoinAPI EMS Managed Cloud REST API` protocol. \n<br/><br/>\nThis API is used to manage the overall deployment of **Execution Management System API** (`EMS API`) software, \nwhich means that in this API, you define the accounts, credentials, and configurations for the order destinations or identify the CoinAPI endpoints where you need to connect to access the `EMS API`. \n<br/><br/>\nImplemented Standards:\n\n * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)\n * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)\n * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540)\n \n### Endpoints\n<table>\n  <thead>\n    <tr>\n      <th>Environment</th>\n      <th>Url</th>\n    </tr>\n  </thead>\n  <tbody>\n    <tr>\n      <td>Production</td>\n      <td><code>https://ems-mgmt.coinapi.io/</code></td>\n    </tr>\n    <tr>\n      <td>Sandbox</td>\n      <td><code>https://ems-mgmt-sandbox.coinapi.io/</code></td>\n    </tr>\n  </tbody>\n</table>\n\n### Authentication\n\nTo use resources that require authorized access, you will need to provide an API key to us when making HTTP requests.\n\nThere are 2 methods for passing the API key to us, you only need to use one:\n\n 1. Custom authorization header named `X-CoinAPI-Key`\n 2. Query string parameter named `apikey`\n\n#### Custom authorization header\n\nYou can authorize by providing additional custom header named `X-CoinAPI-Key` and API key as its value.\n\nAssuming that your API key is `73034021-THIS-IS-SAMPLE-KEY`, then the authorization header you should send to us will look like:\n<br/><br/>\n`X-CoinAPI-Key: 73034021-THIS-IS-SAMPLE-KEY`\n\n<aside class="success">This method is recommended by us and you should use it in production environments.</aside>\n\n#### Query string authorization parameter\n\nYou can authorize by providing an additional parameter named `apikey` with a value equal to your API key in the query string of your HTTP request.\n\nAssuming that your API key is `73034021-THIS-IS-SAMPLE-KEY` and that you want to request all accounts, then your query string should look like this: \n<br/><br/>\n`GET /v1/accounts?apikey=73034021-THIS-IS-SAMPLE-KEY`\n\n<aside class="notice">\nQuery string method may be more practical for development activities.\n</aside>\n

## Requirements

- [Salesforce DX](https://www.salesforce.com/products/platform/products/salesforce-dx/)

If everything is set correctly:

- Running `sfdx version` in a command prompt should output something like:

  ```bash
  sfdx-cli/5.7.5-05549de (darwin-amd64) go1.7.5 sfdxstable
  ```

## Installation

1. Copy the output into your Salesforce DX folder - or alternatively deploy the output directly into the workspace.
2. Deploy the code via Salesforce DX to your Scratch Org

   ```bash
      sfdx force:source:push
   ```

3. If the API needs authentication update the Named Credential in Setup.
4. Run your Apex tests using

   ```bash
       sfdx sfdx force:apex:test:run
   ```

5. Retrieve the job id from the console and check the test results.

  ```bash
  sfdx force:apex:test:report -i theJobId
  ```

## Getting Started

Please follow the [installation](#installation) instruction and execute the following Apex code:

```java
OASAccountApi api = new OASAccountApi();
OASClient client = api.getClient();


Map<String, Object> params = new Map<String, Object>{
    'exchangeId' => new List<String>{''}
};

try {
    // cross your fingers
    api.deleteAccount(params);
} catch (OAS.ApiException e) {
    // ...handle your exceptions
}
```

## Documentation for API Endpoints

All URIs are relative to *https://ems-mgmt-sandbox.coinapi.io*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*OASAccountApi* | [**deleteAccount**](OASAccountApi.md#deleteAccount) | **DELETE** /v1/accounts | Delete account
*OASAccountApi* | [**deleteAccountAll**](OASAccountApi.md#deleteAccountAll) | **DELETE** /v1/accounts/all | Delete all accounts
*OASAccountApi* | [**getAccount**](OASAccountApi.md#getAccount) | **GET** /v1/accounts | Get accounts
*OASAccountApi* | [**persistAccount**](OASAccountApi.md#persistAccount) | **POST** /v1/accounts | Add or update account
*OASCertificateApi* | [**certificate**](OASCertificateApi.md#certificate) | **GET** /v1/certificate/pem | Get authentication certificate
*OASEndpointsApi* | [**endpoints**](OASEndpointsApi.md#endpoints) | **GET** /v1/endpoints | Get API endpoints
*OASExchangeApi* | [**exchangeLoginRequire**](OASExchangeApi.md#exchangeLoginRequire) | **GET** /v1/exchanges | Get exchange configuration
*OASLocationApi* | [**locations**](OASLocationApi.md#locations) | **GET** /v1/locations | Get site locations


## Documentation for Models

 - [OASAccountData](OASAccountData.md)
 - [OASAccountEndpoint](OASAccountEndpoint.md)
 - [OASAccountInfo](OASAccountInfo.md)
 - [OASExchangeLoginRequire](OASExchangeLoginRequire.md)
 - [OASGetAccount](OASGetAccount.md)
 - [OASKeyValue](OASKeyValue.md)
 - [OASLocations](OASLocations.md)
 - [OASUpdateAccount](OASUpdateAccount.md)


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


## Author

support@coinapi.io

