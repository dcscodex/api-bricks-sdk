# FinFeedAPI Stock REST API Bash client

## Overview

This is a Bash client script for accessing FinFeedAPI Stock REST API service.

The script uses cURL underneath for making all REST calls.

## Usage

```shell
# Make sure the script has executable rights
$ chmod u+x 

# Print the list of operations available on the service
$ ./ -h

# Print the service description
$ ./ --about

# Print detailed information about specific operation
$ ./ <operationId> -h

# Make GET request
./ --host http://<hostname>:<port> --accept xml <operationId> <queryParam1>=<value1> <header_key1>:<header_value2>

# Make GET request using arbitrary curl options (must be passed before <operationId>) to an SSL service using username:password
 -k -sS --tlsv1.2 --host https://<hostname> -u <user>:<password> --accept xml <operationId> <queryParam1>=<value1> <header_key1>:<header_value2>

# Make POST request
$ echo '<body_content>' |  --host <hostname> --content-type json <operationId> -

# Make POST request with simple JSON content, e.g.:
# {
#   "key1": "value1",
#   "key2": "value2",
#   "key3": 23
# }
$ echo '<body_content>' |  --host <hostname> --content-type json <operationId> key1==value1 key2=value2 key3:=23 -

# Make POST request with form data
$  --host <hostname> <operationId> key1:=value1 key2:=value2 key3:=23

# Preview the cURL command without actually executing it
$  --host http://<hostname>:<port> --dry-run <operationid>

```

## Docker image

You can easily create a Docker image containing a preconfigured environment
for using the REST Bash client including working autocompletion and short
welcome message with basic instructions, using the generated Dockerfile:

```shell
docker build -t my-rest-client .
docker run -it my-rest-client
```

By default you will be logged into a Zsh environment which has much more
advanced auto completion, but you can switch to Bash, where basic autocompletion
is also available.

## Shell completion

### Bash

The generated bash-completion script can be either directly loaded to the current Bash session using:

```shell
source .bash-completion
```

Alternatively, the script can be copied to the `/etc/bash-completion.d` (or on OSX with Homebrew to `/usr/local/etc/bash-completion.d`):

```shell
sudo cp .bash-completion /etc/bash-completion.d/
```

#### OS X

On OSX you might need to install bash-completion using Homebrew:

```shell
brew install bash-completion
```

and add the following to the `~/.bashrc`:

```shell
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
```

### Zsh

In Zsh, the generated `_` Zsh completion file must be copied to one of the folders under `$FPATH` variable.

## Documentation for API Endpoints

All URIs are relative to **

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*MetadataApi* | [**v1ExchangesGet**](docs/MetadataApi.md#v1exchangesget) | **GET** /v1/exchanges | List of exchanges
*MetadataApi* | [**v1SymbolsExchangeIdGet**](docs/MetadataApi.md#v1symbolsexchangeidget) | **GET** /v1/symbols/{exchange_id} | List of symbols for the exchange
*NativeIEXApi* | [**v1NativeIexAdminMessagesSymbolGet**](docs/NativeIEXApi.md#v1nativeiexadminmessagessymbolget) | **GET** /v1/native/iex/admin/messages/{symbol} | Get Admin Messages
*NativeIEXApi* | [**v1NativeIexAdminSystemEventGet**](docs/NativeIEXApi.md#v1nativeiexadminsystemeventget) | **GET** /v1/native/iex/admin/system-event | Get System Events
*NativeIEXApi* | [**v1NativeIexLevel1QuoteSymbolGet**](docs/NativeIEXApi.md#v1nativeiexlevel1quotesymbolget) | **GET** /v1/native/iex/level1-quote/{symbol} | Get Level-1 Quotes
*NativeIEXApi* | [**v1NativeIexLevel2PriceLevelUpdateSymbolGet**](docs/NativeIEXApi.md#v1nativeiexlevel2pricelevelupdatesymbolget) | **GET** /v1/native/iex/level2-price-level-update/{symbol} | Get Level-2 Price Level Book
*NativeIEXApi* | [**v1NativeIexLevel3OrderBookSymbolGet**](docs/NativeIEXApi.md#v1nativeiexlevel3orderbooksymbolget) | **GET** /v1/native/iex/level3-order-book/{symbol} | Get Level-3 Order Book
*NativeIEXApi* | [**v1NativeIexTradeSymbolGet**](docs/NativeIEXApi.md#v1nativeiextradesymbolget) | **GET** /v1/native/iex/trade/{symbol} | Get Trades
*OhlcvApi* | [**v1OhlcvExchangeExchangeIdHistoryGet**](docs/OhlcvApi.md#v1ohlcvexchangeexchangeidhistoryget) | **GET** /v1/ohlcv/exchange/{exchange_id}/history | Historical data by exchange
*OhlcvApi* | [**v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet**](docs/OhlcvApi.md#v1ohlcvexchangesymbolexchangeidsymbolidhistoryget) | **GET** /v1/ohlcv/exchange-symbol/{exchange_id}/{symbol_id}/history | Historical data
*OhlcvApi* | [**v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet**](docs/OhlcvApi.md#v1ohlcvexchangesymbolexchangeidsymbolidlatestget) | **GET** /v1/ohlcv/exchange-symbol/{exchange_id}/{symbol_id}/latest | Latest data
*OhlcvApi* | [**v1OhlcvPeriodsGet**](docs/OhlcvApi.md#v1ohlcvperiodsget) | **GET** /v1/ohlcv/periods | List all periods


## Documentation For Models

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


## Documentation For Authorization


## APIKey


- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header

## JWT


- **Type**: HTTP Bearer Token authentication (JWT)

