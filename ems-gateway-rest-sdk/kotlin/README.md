# org.openapitools.client - Kotlin client library for EMS - REST API

## Requires

* Kotlin 1.4.30
* Gradle 6.8.3

## Build

First, create the gradle wrapper script:

```
gradle wrapper
```

Then, run:

```
./gradlew check assemble
```

This runs all tests and packages the library.

## Features/Implementation Notes

* Supports JSON inputs/outputs, File inputs, and Form inputs.
* Supports collection formats for query parameters: csv, tsv, ssv, pipes.
* Some Kotlin and Java types are fully qualified to avoid conflicts with types defined in OpenAPI definitions.
* Implementation of ApiClient is intended to reduce method counts, specifically to benefit Android targets.

<a name="documentation-for-api-endpoints"></a>
## Documentation for API Endpoints

All URIs are relative to *https://ems-gateway-aws-eu-central-1-dev.coinapi.io*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*BalancesApi* | [**v1BalancesGet**](docs/BalancesApi.md#v1balancesget) | **GET** /v1/balances | Get balances
*OrdersApi* | [**v1OrdersCancelAllPost**](docs/OrdersApi.md#v1orderscancelallpost) | **POST** /v1/orders/cancel/all | Cancel all orders request
*OrdersApi* | [**v1OrdersCancelPost**](docs/OrdersApi.md#v1orderscancelpost) | **POST** /v1/orders/cancel | Cancel order request
*OrdersApi* | [**v1OrdersGet**](docs/OrdersApi.md#v1ordersget) | **GET** /v1/orders | Get open orders
*OrdersApi* | [**v1OrdersHistoryTimeStartTimeEndGet**](docs/OrdersApi.md#v1ordershistorytimestarttimeendget) | **GET** /v1/orders/history/{time_start}/{time_end} | History of order changes
*OrdersApi* | [**v1OrdersPost**](docs/OrdersApi.md#v1orderspost) | **POST** /v1/orders | Send new order
*OrdersApi* | [**v1OrdersStatusClientOrderIdGet**](docs/OrdersApi.md#v1ordersstatusclientorderidget) | **GET** /v1/orders/status/{client_order_id} | Get order execution report
*PositionsApi* | [**v1PositionsGet**](docs/PositionsApi.md#v1positionsget) | **GET** /v1/positions | Get open positions


<a name="documentation-for-models"></a>
## Documentation for Models

 - [org.openapitools.client.models.Balance](docs/Balance.md)
 - [org.openapitools.client.models.BalanceDataInner](docs/BalanceDataInner.md)
 - [org.openapitools.client.models.Fills](docs/Fills.md)
 - [org.openapitools.client.models.MessageError](docs/MessageError.md)
 - [org.openapitools.client.models.MessageReject](docs/MessageReject.md)
 - [org.openapitools.client.models.OrdSide](docs/OrdSide.md)
 - [org.openapitools.client.models.OrdStatus](docs/OrdStatus.md)
 - [org.openapitools.client.models.OrdType](docs/OrdType.md)
 - [org.openapitools.client.models.OrderCancelAllRequest](docs/OrderCancelAllRequest.md)
 - [org.openapitools.client.models.OrderCancelSingleRequest](docs/OrderCancelSingleRequest.md)
 - [org.openapitools.client.models.OrderExecutionReport](docs/OrderExecutionReport.md)
 - [org.openapitools.client.models.OrderExecutionReportAllOf](docs/OrderExecutionReportAllOf.md)
 - [org.openapitools.client.models.OrderHistory](docs/OrderHistory.md)
 - [org.openapitools.client.models.OrderNewSingleRequest](docs/OrderNewSingleRequest.md)
 - [org.openapitools.client.models.Position](docs/Position.md)
 - [org.openapitools.client.models.PositionDataInner](docs/PositionDataInner.md)
 - [org.openapitools.client.models.RejectReason](docs/RejectReason.md)
 - [org.openapitools.client.models.TimeInForce](docs/TimeInForce.md)
 - [org.openapitools.client.models.ValidationError](docs/ValidationError.md)


<a name="documentation-for-authorization"></a>
## Documentation for Authorization

All endpoints do not require authorization.
