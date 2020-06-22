# org.openapitools.client - Kotlin client library for OMS - REST API ...@

## Requires

* Kotlin 1.3.41
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

This runs all tests and packages the library.

## Features/Implementation Notes

* Supports JSON inputs/outputs, File inputs, and Form inputs.
* Supports collection formats for query parameters: csv, tsv, ssv, pipes.
* Some Kotlin and Java types are fully qualified to avoid conflicts with types defined in OpenAPI definitions.
* Implementation of ApiClient is intended to reduce method counts, specifically to benefit Android targets.

<a name="documentation-for-api-endpoints"></a>
## Documentation for API Endpoints

All URIs are relative to *http://localhost:3001*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*BalancesApi* | [**v1BalancesGet**](docs/BalancesApi.md#v1balancesget) | **GET** /v1/balances | Get balances
*OrdersApi* | [**v1OrdersCancelAllPost**](docs/OrdersApi.md#v1orderscancelallpost) | **POST** /v1/orders/cancel/all | Cancel all order
*OrdersApi* | [**v1OrdersCancelPost**](docs/OrdersApi.md#v1orderscancelpost) | **POST** /v1/orders/cancel | Cancel order
*OrdersApi* | [**v1OrdersGet**](docs/OrdersApi.md#v1ordersget) | **GET** /v1/orders | Get orders
*OrdersApi* | [**v1OrdersPost**](docs/OrdersApi.md#v1orderspost) | **POST** /v1/orders | Create new order
*PositionsApi* | [**v1PositionsGet**](docs/PositionsApi.md#v1positionsget) | **GET** /v1/positions | Get positions


<a name="documentation-for-models"></a>
## Documentation for Models

 - [org.openapitools.client.models.Balance](docs/Balance.md)
 - [org.openapitools.client.models.BalanceData](docs/BalanceData.md)
 - [org.openapitools.client.models.CancelAllOrder](docs/CancelAllOrder.md)
 - [org.openapitools.client.models.CancelOrder](docs/CancelOrder.md)
 - [org.openapitools.client.models.CreateOrder400](docs/CreateOrder400.md)
 - [org.openapitools.client.models.Messages](docs/Messages.md)
 - [org.openapitools.client.models.MessagesInfo](docs/MessagesInfo.md)
 - [org.openapitools.client.models.MessagesOk](docs/MessagesOk.md)
 - [org.openapitools.client.models.NewOrder](docs/NewOrder.md)
 - [org.openapitools.client.models.Order](docs/Order.md)
 - [org.openapitools.client.models.OrderData](docs/OrderData.md)
 - [org.openapitools.client.models.OrderLive](docs/OrderLive.md)
 - [org.openapitools.client.models.OrderStatus](docs/OrderStatus.md)
 - [org.openapitools.client.models.Position](docs/Position.md)
 - [org.openapitools.client.models.PositionData](docs/PositionData.md)
 - [org.openapitools.client.models.TimeInForce](docs/TimeInForce.md)


<a name="documentation-for-authorization"></a>
## Documentation for Authorization

All endpoints do not require authorization.
