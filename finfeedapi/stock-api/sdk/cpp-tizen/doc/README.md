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
All URIs are relative to https://api-historical.stock.finfeedapi.comhttps://api-historical.stock.finfeedapi.com


### MetadataManager
Method | HTTP request | Description
------------- | ------------- | -------------
*v1ExchangesGetSync* | *GET* /v1/exchanges | List of exchanges.
*v1ExchangesGetASync* | *GET* /v1/exchanges | List of exchanges.
*v1SymbolsExchangeIdGetSync* | *GET* /v1/symbols/{exchange_id} | List of symbols for the exchange.
*v1SymbolsExchangeIdGetASync* | *GET* /v1/symbols/{exchange_id} | List of symbols for the exchange.


### NativeIEXManager
Method | HTTP request | Description
------------- | ------------- | -------------
*v1NativeIexAdminMessagesSymbolGetSync* | *GET* /v1/native/iex/admin/messages/{symbol} | Get Admin Messages.
*v1NativeIexAdminMessagesSymbolGetASync* | *GET* /v1/native/iex/admin/messages/{symbol} | Get Admin Messages.
*v1NativeIexAdminSystemEventGetSync* | *GET* /v1/native/iex/admin/system-event | Get System Events.
*v1NativeIexAdminSystemEventGetASync* | *GET* /v1/native/iex/admin/system-event | Get System Events.
*v1NativeIexLevel1QuoteSymbolGetSync* | *GET* /v1/native/iex/level1-quote/{symbol} | Get Level-1 Quotes.
*v1NativeIexLevel1QuoteSymbolGetASync* | *GET* /v1/native/iex/level1-quote/{symbol} | Get Level-1 Quotes.
*v1NativeIexLevel2PriceLevelUpdateSymbolGetSync* | *GET* /v1/native/iex/level2-price-level-update/{symbol} | Get Level-2 Price Level Book.
*v1NativeIexLevel2PriceLevelUpdateSymbolGetASync* | *GET* /v1/native/iex/level2-price-level-update/{symbol} | Get Level-2 Price Level Book.
*v1NativeIexLevel3OrderBookSymbolGetSync* | *GET* /v1/native/iex/level3-order-book/{symbol} | Get Level-3 Order Book.
*v1NativeIexLevel3OrderBookSymbolGetASync* | *GET* /v1/native/iex/level3-order-book/{symbol} | Get Level-3 Order Book.
*v1NativeIexTradeSymbolGetSync* | *GET* /v1/native/iex/trade/{symbol} | Get Trades.
*v1NativeIexTradeSymbolGetASync* | *GET* /v1/native/iex/trade/{symbol} | Get Trades.


### OhlcvManager
Method | HTTP request | Description
------------- | ------------- | -------------
*v1OhlcvExchangeExchangeIdHistoryGetSync* | *GET* /v1/ohlcv/exchange/{exchange_id}/history | Historical data by exchange.
*v1OhlcvExchangeExchangeIdHistoryGetASync* | *GET* /v1/ohlcv/exchange/{exchange_id}/history | Historical data by exchange.
*v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGetSync* | *GET* /v1/ohlcv/exchange-symbol/{exchange_id}/{symbol_id}/history | Historical data.
*v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGetASync* | *GET* /v1/ohlcv/exchange-symbol/{exchange_id}/{symbol_id}/history | Historical data.
*v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGetSync* | *GET* /v1/ohlcv/exchange-symbol/{exchange_id}/{symbol_id}/latest | Latest data.
*v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGetASync* | *GET* /v1/ohlcv/exchange-symbol/{exchange_id}/{symbol_id}/latest | Latest data.
*v1OhlcvPeriodsGetSync* | *GET* /v1/ohlcv/periods | List all periods.
*v1OhlcvPeriodsGetASync* | *GET* /v1/ohlcv/periods | List all periods.


## What are the Model files for the data structures/objects?
Class | Description
------------- | -------------
 *Admin.AdminMessageModel* | Represents the response DTO for IEX admin information, combining all symbol-based admin message types
 *Admin.AuctionInformationModel* | Represents the response DTO for auction information
 *Admin.OfficialPriceModel* | Represents the response DTO for official price information
 *Admin.OperationalHaltStatusModel* | Represents the response DTO for operational halt status information
 *Admin.RetailLiquidityIndicatorModel* | Represents the response DTO for retail liquidity indicator information
 *Admin.SecurityDirectoryModel* | Represents the response DTO for security directory information
 *Admin.SecurityEventModel* | Represents the response DTO for security event information
 *Admin.ShortSalePriceTestStatusModel* | Represents the response DTO for short sale price test status information
 *Admin.SystemEventModel* | Represents the response DTO for system event information
 *Admin.TradingStatusModel* | Represents the response DTO for trading status information
 *FinFeedAPI.ExchangeModel* | 
 *FinFeedAPI.SymbolModel* | 
 *Level1.QuoteUpdateModel* | Represents the response DTO for quote update information
 *Level2.PriceLevelUpdateModel* | Represents the response DTO for price level update information
 *Level3.AddOrderModel* | Represents the response DTO for add order information
 *Level3.ClearBookModel* | Represents the response DTO for clear book information
 *Level3.DeleteOrderModel* | Represents the response DTO for order delete information
 *Level3.ExecutedOrderModel* | Represents the response DTO for order executed information
 *Level3.ModifyOrderModel* | Represents the response DTO for order modify information
 *Level3.OrderBookModel* | Represents the response DTO for Level-3 order book information
 *OHLCV.ExchangeTimeseriesItem* | Represents a timeseries item with price and volume information.
 *OHLCV.TimeseriesItem* | Represents a timeseries item with price and volume information.
 *OHLCV.TimeseriesPeriod* | Represents a timeseries period used in exchange rate data.
 *Trade.TradeModel* | Represents the response DTO for a single trade event (report or break).

