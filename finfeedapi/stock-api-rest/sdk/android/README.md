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

import org.openapitools.client.api.MetadataApi;

public class MetadataApiExample {

    public static void main(String[] args) {
        MetadataApi apiInstance = new MetadataApi();
        try {
            List<FinFeedAPIExchangeModel> result = apiInstance.v1ExchangesGet();
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling MetadataApi#v1ExchangesGet");
            e.printStackTrace();
        }
    }
}

```

## Documentation for API Endpoints

All URIs are relative to *https://api-historical.stock.finfeedapi.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*MetadataApi* | [**v1ExchangesGet**](docs/MetadataApi.md#v1ExchangesGet) | **GET** /v1/exchanges | List of exchanges
*MetadataApi* | [**v1SymbolsExchangeIdGet**](docs/MetadataApi.md#v1SymbolsExchangeIdGet) | **GET** /v1/symbols/{exchange_id} | List of symbols for the exchange
*NativeIEXApi* | [**v1NativeIexAdminMessagesSymbolGet**](docs/NativeIEXApi.md#v1NativeIexAdminMessagesSymbolGet) | **GET** /v1/native/iex/admin/messages/{symbol} | Get Admin Messages
*NativeIEXApi* | [**v1NativeIexAdminSystemEventGet**](docs/NativeIEXApi.md#v1NativeIexAdminSystemEventGet) | **GET** /v1/native/iex/admin/system-event | Get System Events
*NativeIEXApi* | [**v1NativeIexLevel1QuoteSymbolGet**](docs/NativeIEXApi.md#v1NativeIexLevel1QuoteSymbolGet) | **GET** /v1/native/iex/level1-quote/{symbol} | Get Level-1 Quotes
*NativeIEXApi* | [**v1NativeIexLevel2PriceLevelUpdateSymbolGet**](docs/NativeIEXApi.md#v1NativeIexLevel2PriceLevelUpdateSymbolGet) | **GET** /v1/native/iex/level2-price-level-update/{symbol} | Get Level-2 Price Level Book
*NativeIEXApi* | [**v1NativeIexLevel3OrderBookSymbolGet**](docs/NativeIEXApi.md#v1NativeIexLevel3OrderBookSymbolGet) | **GET** /v1/native/iex/level3-order-book/{symbol} | Get Level-3 Order Book
*NativeIEXApi* | [**v1NativeIexTradeSymbolGet**](docs/NativeIEXApi.md#v1NativeIexTradeSymbolGet) | **GET** /v1/native/iex/trade/{symbol} | Get Trades
*OhlcvApi* | [**v1OhlcvExchangeExchangeIdHistoryGet**](docs/OhlcvApi.md#v1OhlcvExchangeExchangeIdHistoryGet) | **GET** /v1/ohlcv/exchange/{exchange_id}/history | Historical data by exchange
*OhlcvApi* | [**v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet**](docs/OhlcvApi.md#v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet) | **GET** /v1/ohlcv/exchange-symbol/{exchange_id}/{symbol_id}/history | Historical data
*OhlcvApi* | [**v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet**](docs/OhlcvApi.md#v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet) | **GET** /v1/ohlcv/exchange-symbol/{exchange_id}/{symbol_id}/latest | Latest data
*OhlcvApi* | [**v1OhlcvPeriodsGet**](docs/OhlcvApi.md#v1OhlcvPeriodsGet) | **GET** /v1/ohlcv/periods | List all periods


## Documentation for Models

 - [AdminAdminMessageModel](docs/AdminAdminMessageModel.md)
 - [AdminAuctionInformationModel](docs/AdminAuctionInformationModel.md)
 - [AdminOfficialPriceModel](docs/AdminOfficialPriceModel.md)
 - [AdminOperationalHaltStatusModel](docs/AdminOperationalHaltStatusModel.md)
 - [AdminRetailLiquidityIndicatorModel](docs/AdminRetailLiquidityIndicatorModel.md)
 - [AdminSecurityDirectoryModel](docs/AdminSecurityDirectoryModel.md)
 - [AdminSecurityEventModel](docs/AdminSecurityEventModel.md)
 - [AdminShortSalePriceTestStatusModel](docs/AdminShortSalePriceTestStatusModel.md)
 - [AdminSystemEventModel](docs/AdminSystemEventModel.md)
 - [AdminTradingStatusModel](docs/AdminTradingStatusModel.md)
 - [FinFeedAPIExchangeModel](docs/FinFeedAPIExchangeModel.md)
 - [FinFeedAPISymbolModel](docs/FinFeedAPISymbolModel.md)
 - [Level1QuoteUpdateModel](docs/Level1QuoteUpdateModel.md)
 - [Level2PriceLevelUpdateModel](docs/Level2PriceLevelUpdateModel.md)
 - [Level3AddOrderModel](docs/Level3AddOrderModel.md)
 - [Level3ClearBookModel](docs/Level3ClearBookModel.md)
 - [Level3DeleteOrderModel](docs/Level3DeleteOrderModel.md)
 - [Level3ExecutedOrderModel](docs/Level3ExecutedOrderModel.md)
 - [Level3ModifyOrderModel](docs/Level3ModifyOrderModel.md)
 - [Level3OrderBookModel](docs/Level3OrderBookModel.md)
 - [OHLCVExchangeTimeseriesItem](docs/OHLCVExchangeTimeseriesItem.md)
 - [OHLCVTimeseriesItem](docs/OHLCVTimeseriesItem.md)
 - [OHLCVTimeseriesPeriod](docs/OHLCVTimeseriesPeriod.md)
 - [TradeTradeModel](docs/TradeTradeModel.md)


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

