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

import org.openapitools.client.api.BalancesApi;

public class BalancesApiExample {

    public static void main(String[] args) {
        BalancesApi apiInstance = new BalancesApi();
        String exchangeId = KRAKEN; // String | Exchange name
        try {
            List<Balance> result = apiInstance.v1BalancesGet(exchangeId);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling BalancesApi#v1BalancesGet");
            e.printStackTrace();
        }
    }
}

```

## Documentation for API Endpoints

All URIs are relative to *http://localhost:3001*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*BalancesApi* | [**v1BalancesGet**](docs/BalancesApi.md#v1BalancesGet) | **GET** /v1/balances | Get balances
*OrdersApi* | [**v1OrdersCancelAllPost**](docs/OrdersApi.md#v1OrdersCancelAllPost) | **POST** /v1/orders/cancel/all | Cancel all order
*OrdersApi* | [**v1OrdersCancelPost**](docs/OrdersApi.md#v1OrdersCancelPost) | **POST** /v1/orders/cancel | Cancel order
*OrdersApi* | [**v1OrdersGet**](docs/OrdersApi.md#v1OrdersGet) | **GET** /v1/orders | Get orders
*OrdersApi* | [**v1OrdersPost**](docs/OrdersApi.md#v1OrdersPost) | **POST** /v1/orders | Create new order
*PositionsApi* | [**v1PositionsGet**](docs/PositionsApi.md#v1PositionsGet) | **GET** /v1/positions | Get positions


## Documentation for Models

 - [Balance](docs/Balance.md)
 - [BalanceData](docs/BalanceData.md)
 - [CancelAllOrder](docs/CancelAllOrder.md)
 - [CancelOrder](docs/CancelOrder.md)
 - [CreateOrder400](docs/CreateOrder400.md)
 - [Messages](docs/Messages.md)
 - [MessagesInfo](docs/MessagesInfo.md)
 - [MessagesOk](docs/MessagesOk.md)
 - [NewOrder](docs/NewOrder.md)
 - [Order](docs/Order.md)
 - [OrderData](docs/OrderData.md)
 - [OrderLive](docs/OrderLive.md)
 - [OrderStatus](docs/OrderStatus.md)
 - [Position](docs/Position.md)
 - [PositionData](docs/PositionData.md)
 - [TimeInForce](docs/TimeInForce.md)


## Documentation for Authorization

All endpoints do not require authorization.
Authentication schemes defined for the API:

## Recommendation

It's recommended to create an instance of `ApiClient` per thread in a multithreaded environment to avoid any potential issues.

## Author



