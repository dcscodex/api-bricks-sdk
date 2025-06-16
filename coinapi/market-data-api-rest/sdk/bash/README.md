# CoinAPI Market Data REST API Bash client

## Overview

This is a Bash client script for accessing CoinAPI Market Data REST API service.

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
*ExchangeRatesApi* | [**getSpecificRate**](docs/ExchangeRatesApi.md#getspecificrate) | **GET** /v1/exchangerate/{asset_id_base}/{asset_id_quote} | Get specific rate
*ExchangeRatesApi* | [**v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet**](docs/ExchangeRatesApi.md#v1exchangerateassetidbaseassetidquotehistoryget) | **GET** /v1/exchangerate/{asset_id_base}/{asset_id_quote}/history | Timeseries data
*ExchangeRatesApi* | [**v1ExchangerateAssetIdBaseGet**](docs/ExchangeRatesApi.md#v1exchangerateassetidbaseget) | **GET** /v1/exchangerate/{asset_id_base} | Get all current rates
*ExchangeRatesApi* | [**v1ExchangerateHistoryPeriodsGet**](docs/ExchangeRatesApi.md#v1exchangeratehistoryperiodsget) | **GET** /v1/exchangerate/history/periods | Timeseries periods
*ExternalMetricsApi* | [**v1ExternalmetricsAssetHistoryGet**](docs/ExternalMetricsApi.md#v1externalmetricsassethistoryget) | **GET** /v1/externalmetrics/asset/history | Historical metrics for the asset
*ExternalMetricsApi* | [**v1ExternalmetricsAssetListingGet**](docs/ExternalMetricsApi.md#v1externalmetricsassetlistingget) | **GET** /v1/externalmetrics/asset/listing | Listing of metrics available for specific asset
*ExternalMetricsApi* | [**v1ExternalmetricsChainHistoryGet**](docs/ExternalMetricsApi.md#v1externalmetricschainhistoryget) | **GET** /v1/externalmetrics/chain/history | Historical metrics for the chain
*ExternalMetricsApi* | [**v1ExternalmetricsChainListingGet**](docs/ExternalMetricsApi.md#v1externalmetricschainlistingget) | **GET** /v1/externalmetrics/chain/listing | Listing of metrics available for specific chain
*ExternalMetricsApi* | [**v1ExternalmetricsExchangeHistoryGet**](docs/ExternalMetricsApi.md#v1externalmetricsexchangehistoryget) | **GET** /v1/externalmetrics/exchange/history | Historical metrics for the exchange
*ExternalMetricsApi* | [**v1ExternalmetricsExchangeListingGet**](docs/ExternalMetricsApi.md#v1externalmetricsexchangelistingget) | **GET** /v1/externalmetrics/exchange/listing | Listing of metrics available for specific exchange
*ExternalMetricsApi* | [**v1ExternalmetricsListingGet**](docs/ExternalMetricsApi.md#v1externalmetricslistingget) | **GET** /v1/externalmetrics/listing | Listing of all supported metrics
*MetadataApi* | [**v1AssetsAssetIdGet**](docs/MetadataApi.md#v1assetsassetidget) | **GET** /v1/assets/{asset_id} | List all assets by asset ID
*MetadataApi* | [**v1AssetsGet**](docs/MetadataApi.md#v1assetsget) | **GET** /v1/assets | List all assets
*MetadataApi* | [**v1AssetsIconsSizeGet**](docs/MetadataApi.md#v1assetsiconssizeget) | **GET** /v1/assets/icons/{size} | List all asset icons
*MetadataApi* | [**v1ChainsChainIdGet**](docs/MetadataApi.md#v1chainschainidget) | **GET** /v1/chains/{chain_id} | List all chains by chain ID
*MetadataApi* | [**v1ChainsGet**](docs/MetadataApi.md#v1chainsget) | **GET** /v1/chains | List all blockchain chains
*MetadataApi* | [**v1ExchangesExchangeIdGet**](docs/MetadataApi.md#v1exchangesexchangeidget) | **GET** /v1/exchanges/{exchange_id} | List all exchanges by exchange_id
*MetadataApi* | [**v1ExchangesGet**](docs/MetadataApi.md#v1exchangesget) | **GET** /v1/exchanges | List all exchanges
*MetadataApi* | [**v1ExchangesIconsSizeGet**](docs/MetadataApi.md#v1exchangesiconssizeget) | **GET** /v1/exchanges/icons/{size} | List of icons for the exchanges
*MetadataApi* | [**v1SymbolsExchangeIdGet**](docs/MetadataApi.md#v1symbolsexchangeidget) | **GET** /v1/symbols/{exchange_id} | List of symbols for the exchange
*MetadataApi* | [**v1SymbolsGet**](docs/MetadataApi.md#v1symbolsget) | **GET** /v1/symbols | List all symbols
*MetadataApi* | [**v1SymbolsMapExchangeIdGet**](docs/MetadataApi.md#v1symbolsmapexchangeidget) | **GET** /v1/symbols/map/{exchange_id} | List symbol mapping for the exchange
*MetricsApi* | [**v1MetricsAssetCurrentGet**](docs/MetricsApi.md#v1metricsassetcurrentget) | **GET** /v1/metrics/asset/current | Current metrics for given asset
*MetricsApi* | [**v1MetricsAssetHistoryGet**](docs/MetricsApi.md#v1metricsassethistoryget) | **GET** /v1/metrics/asset/history | Historical metrics for asset
*MetricsApi* | [**v1MetricsAssetListingGet**](docs/MetricsApi.md#v1metricsassetlistingget) | **GET** /v1/metrics/asset/listing | Listing of all supported metrics for asset
*MetricsApi* | [**v1MetricsExchangeCurrentGet**](docs/MetricsApi.md#v1metricsexchangecurrentget) | **GET** /v1/metrics/exchange/current | Current metrics for given exchange
*MetricsApi* | [**v1MetricsExchangeHistoryGet**](docs/MetricsApi.md#v1metricsexchangehistoryget) | **GET** /v1/metrics/exchange/history | Historical metrics for the exchange
*MetricsApi* | [**v1MetricsExchangeListingGet**](docs/MetricsApi.md#v1metricsexchangelistingget) | **GET** /v1/metrics/exchange/listing | Listing of all supported exchange metrics
*MetricsApi* | [**v1MetricsListingGet**](docs/MetricsApi.md#v1metricslistingget) | **GET** /v1/metrics/listing | Listing of all supported metrics by CoinAPI
*MetricsApi* | [**v1MetricsSymbolCurrentGet**](docs/MetricsApi.md#v1metricssymbolcurrentget) | **GET** /v1/metrics/symbol/current | Current metrics for given symbol
*MetricsApi* | [**v1MetricsSymbolHistoryGet**](docs/MetricsApi.md#v1metricssymbolhistoryget) | **GET** /v1/metrics/symbol/history | Historical metrics for symbol
*MetricsApi* | [**v1MetricsSymbolListingGet**](docs/MetricsApi.md#v1metricssymbollistingget) | **GET** /v1/metrics/symbol/listing | Listing of all supported metrics for symbol
*OhlcvApi* | [**v1OhlcvExchangesExchangeIdHistoryGet**](docs/OhlcvApi.md#v1ohlcvexchangesexchangeidhistoryget) | **GET** /v1/ohlcv/exchanges/{exchange_id}/history | Historical data by exchange
*OhlcvApi* | [**v1OhlcvPeriodsGet**](docs/OhlcvApi.md#v1ohlcvperiodsget) | **GET** /v1/ohlcv/periods | List all periods
*OhlcvApi* | [**v1OhlcvSymbolIdHistoryGet**](docs/OhlcvApi.md#v1ohlcvsymbolidhistoryget) | **GET** /v1/ohlcv/{symbol_id}/history | Historical data
*OhlcvApi* | [**v1OhlcvSymbolIdLatestGet**](docs/OhlcvApi.md#v1ohlcvsymbolidlatestget) | **GET** /v1/ohlcv/{symbol_id}/latest | Latest data
*OptionsApi* | [**v1OptionsExchangeIdCurrentGet**](docs/OptionsApi.md#v1optionsexchangeidcurrentget) | **GET** /v1/options/{exchange_id}/current | Current data by Exchange
*OrderBookApi* | [**v1OrderbooksSymbolIdCurrentGet**](docs/OrderBookApi.md#v1orderbookssymbolidcurrentget) | **GET** /v1/orderbooks/{symbol_id}/current | Get current order book
*OrderBookApi* | [**v1OrderbooksSymbolIdDepthCurrentGet**](docs/OrderBookApi.md#v1orderbookssymboliddepthcurrentget) | **GET** /v1/orderbooks/{symbol_id}/depth/current | Current depth of the order book
*OrderBookApi* | [**v1OrderbooksSymbolIdHistoryGet**](docs/OrderBookApi.md#v1orderbookssymbolidhistoryget) | **GET** /v1/orderbooks/{symbol_id}/history | Historical data
*OrderBookApi* | [**v1OrderbooksSymbolIdLatestGet**](docs/OrderBookApi.md#v1orderbookssymbolidlatestget) | **GET** /v1/orderbooks/{symbol_id}/latest | Latest data
*OrderBookL3Api* | [**v1Orderbooks3CurrentGet**](docs/OrderBookL3Api.md#v1orderbooks3currentget) | **GET** /v1/orderbooks3/current | Current order books
*OrderBookL3Api* | [**v1Orderbooks3SymbolIdCurrentGet**](docs/OrderBookL3Api.md#v1orderbooks3symbolidcurrentget) | **GET** /v1/orderbooks3/{symbol_id}/current | Current order book by symbol_id
*QuotesApi* | [**v1QuotesCurrentGet**](docs/QuotesApi.md#v1quotescurrentget) | **GET** /v1/quotes/current | Current data
*QuotesApi* | [**v1QuotesLatestGet**](docs/QuotesApi.md#v1quoteslatestget) | **GET** /v1/quotes/latest | Latest data
*QuotesApi* | [**v1QuotesSymbolIdCurrentGet**](docs/QuotesApi.md#v1quotessymbolidcurrentget) | **GET** /v1/quotes/{symbol_id}/current | Current quotes for a specific symbol
*QuotesApi* | [**v1QuotesSymbolIdHistoryGet**](docs/QuotesApi.md#v1quotessymbolidhistoryget) | **GET** /v1/quotes/{symbol_id}/history | Historical data
*QuotesApi* | [**v1QuotesSymbolIdLatestGet**](docs/QuotesApi.md#v1quotessymbolidlatestget) | **GET** /v1/quotes/{symbol_id}/latest | Latest quote updates for a specific symbol
*TradesApi* | [**v1TradesLatestGet**](docs/TradesApi.md#v1tradeslatestget) | **GET** /v1/trades/latest | Latest data
*TradesApi* | [**v1TradesSymbolIdHistoryGet**](docs/TradesApi.md#v1tradessymbolidhistoryget) | **GET** /v1/trades/{symbol_id}/history | Historical data
*TradesApi* | [**v1TradesSymbolIdLatestGet**](docs/TradesApi.md#v1tradessymbolidlatestget) | **GET** /v1/trades/{symbol_id}/latest | Latest data by symbol_id


## Documentation For Models

 - [ModelsExchangeTimeseriesItem](docs/ModelsExchangeTimeseriesItem.md)
 - [OptionsOptionExchangeGroup](docs/OptionsOptionExchangeGroup.md)
 - [OptionsStrike](docs/OptionsStrike.md)
 - [V1Asset](docs/V1Asset.md)
 - [V1Chain](docs/V1Chain.md)
 - [V1ChainNetworkAddress](docs/V1ChainNetworkAddress.md)
 - [V1Exchange](docs/V1Exchange.md)
 - [V1ExchangeRate](docs/V1ExchangeRate.md)
 - [V1ExchangeRates](docs/V1ExchangeRates.md)
 - [V1ExchangeRatesRate](docs/V1ExchangeRatesRate.md)
 - [V1ExchangeRatesTimeseriesItem](docs/V1ExchangeRatesTimeseriesItem.md)
 - [V1GeneralData](docs/V1GeneralData.md)
 - [V1Icon](docs/V1Icon.md)
 - [V1LastTrade](docs/V1LastTrade.md)
 - [V1ListingItem](docs/V1ListingItem.md)
 - [V1Metric](docs/V1Metric.md)
 - [V1MetricData](docs/V1MetricData.md)
 - [V1MetricInfo](docs/V1MetricInfo.md)
 - [V1OrderBook](docs/V1OrderBook.md)
 - [V1OrderBookBase](docs/V1OrderBookBase.md)
 - [V1OrderBookDepth](docs/V1OrderBookDepth.md)
 - [V1Quote](docs/V1Quote.md)
 - [V1QuoteTrade](docs/V1QuoteTrade.md)
 - [V1Symbol](docs/V1Symbol.md)
 - [V1SymbolMapping](docs/V1SymbolMapping.md)
 - [V1TimeseriesItem](docs/V1TimeseriesItem.md)
 - [V1TimeseriesPeriod](docs/V1TimeseriesPeriod.md)
 - [V1Trade](docs/V1Trade.md)


## Documentation For Authorization


## APIKey


- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header

## JWT


- **Type**: HTTP Bearer Token authentication (JWT)

