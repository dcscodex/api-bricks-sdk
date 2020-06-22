# OMS - REST API ...@ API Client


OMS Project

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
OASBalancesApi api = new OASBalancesApi();

Map<String, Object> params = new Map<String, Object>{
    'exchangeId' => KRAKEN
};

try {
    // cross your fingers
    List<OASBalance> result = api.v1BalancesGet(params);
    System.debug(result);
} catch (OAS.ApiException e) {
    // ...handle your exceptions
}
```

## Documentation for API Endpoints

All URIs are relative to *http://localhost:3001*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*OASBalancesApi* | [**v1BalancesGet**](OASBalancesApi.md#v1BalancesGet) | **GET** /v1/balances | Get balances
*OASOrdersApi* | [**v1OrdersCancelAllPost**](OASOrdersApi.md#v1OrdersCancelAllPost) | **POST** /v1/orders/cancel/all | Cancel all order
*OASOrdersApi* | [**v1OrdersCancelPost**](OASOrdersApi.md#v1OrdersCancelPost) | **POST** /v1/orders/cancel | Cancel order
*OASOrdersApi* | [**v1OrdersGet**](OASOrdersApi.md#v1OrdersGet) | **GET** /v1/orders | Get orders
*OASOrdersApi* | [**v1OrdersPost**](OASOrdersApi.md#v1OrdersPost) | **POST** /v1/orders | Create new order
*OASPositionsApi* | [**v1PositionsGet**](OASPositionsApi.md#v1PositionsGet) | **GET** /v1/positions | Get positions


## Documentation for Models

 - [OASBalance](OASBalance.md)
 - [OASBalanceData](OASBalanceData.md)
 - [OASCancelAllOrder](OASCancelAllOrder.md)
 - [OASCancelOrder](OASCancelOrder.md)
 - [OASCreateOrder400](OASCreateOrder400.md)
 - [OASMessages](OASMessages.md)
 - [OASMessagesInfo](OASMessagesInfo.md)
 - [OASMessagesOk](OASMessagesOk.md)
 - [OASNewOrder](OASNewOrder.md)
 - [OASOrder](OASOrder.md)
 - [OASOrderData](OASOrderData.md)
 - [OASOrderLive](OASOrderLive.md)
 - [OASOrderStatus](OASOrderStatus.md)
 - [OASPosition](OASPosition.md)
 - [OASPositionData](OASPositionData.md)
 - [OASTimeInForce](OASTimeInForce.md)


## Documentation for Authorization

All endpoints do not require authorization.
Authentication schemes defined for the API:

## Author



