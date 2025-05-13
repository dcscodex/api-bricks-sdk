# API BRICKS SDK 

![GitHub language count](https://img.shields.io/github/languages/count/api-bricks/api-bricks-sdk)

Welcome to the API BRICKS SDK. This repository contain SDK for our API's.

## Our Products

This repository provides SDKs for our main product families: CoinAPI and FinFeedAPI.

### CoinAPI

**Main Website:** [www.coinapi.io](https://www.coinapi.io/)
**Documentation Hub:** [https://docs.coinapi.io/](https://docs.coinapi.io/)

The CoinAPI family includes the following specific APIs and SDKs present in this repository:

| Product Name                        | Description                                                        | Protocols       |
| ----------------------------------- | ------------------------------------------------------------------ | --------------- |
| Market Data API                     | SDK for CoinAPI Market Data API                                    | REST, WebSocket, FIX |
| EMS Cloud Management SDK            | SDK for CoinAPI Execution Management System Managed Cloud REST API | REST            |
| EMS Gateway REST SDK                | SDK for CoinAPI Execution Management System REST API               | REST, WS            |
| EMS Gateway FIX SDK                 | SDK for CoinAPI Execution Management System FIX API                | FIX             |
| Indexes API                         | SDK for CoinAPI Indexes API                                        | REST, WS            |
| Exchange Rates API                  | SDK for CoinAPI Exchange Rates API                                 | REST, WS            |
| Flat Files API Processing Samples   | Examples related to processing GZIP+CSV flat files      | GZIP+CSV        |

*For detailed documentation on each specific API, please refer to the [CoinAPI Documentation Hub](https://docs.coinapi.io/).*

### FinFeedAPI

**Main Website:** [www.finfeedapi.com](https://www.finfeedapi.com/)
**Documentation Hub:** [https://docs.finfeedapi.com/](https://docs.finfeedapi.com/)

The FinFeedAPI family includes the following specific APIs and SDKs present in this repository:

| Product Name                        | Description                                 | Protocols       |
| ----------------------------------- | ------------------------------------------- | --------------- |
| Stock API                           | SDK for FinFeed API Stock API               | REST            |
| SEC API                             | SDK for FinFeed API SEC API                 | REST            |

*For detailed documentation on each specific API, please refer to the [FinFeedAPI Documentation Hub](https://docs.finfeedapi.com/).*

## Repository organization

Directory | Description |
--- | --- |
`coinapi/market-data-api` | SDK for CoinAPI Market Data API |
`coinapi/ems-cloud-mgmt-sdk` | SDK for CoinAPI Execution Management System Managed Cloud REST API |
`coinapi/ems-gateway-rest-sdk` | SDK for CoinAPI Execution Management System REST API |
`coinapi/ems-gateway-fix` | SDK for CoinAPI Execution Management System FIX API |
`coinapi/flat-files-api-processing-samples` | Examples related to processing CryptoTick GZIP+CSV flat files |
`coinapi/indexes-api` | SDK for CoinAPI Indexes API |
`coinapi/exchange-rates-api` | SDK for CoinAPI Exchange Rates API |
`finfeedapi/stock-api` | SDK for FinFeed API Stock API |
`finfeedapi/sec-api` | SDK for FinFeed API SEC API |

## Package managers coverage

Language | Package manager | Protocol | Package name | Version/Link |
--- | --- | --- | --- | --- |
C# | NuGet | REST | CoinAPI.REST.V1 | ![Nuget](https://img.shields.io/nuget/v/CoinAPI.REST.v1) |
C# | NuGet | WebSocket | CoinAPI.WebSocket.V1 | ![Nuget](https://img.shields.io/nuget/v/CoinAPI.WebSocket.v1) |
Java | Maven<br/>(GitHub Packages) | REST | io.coinapi.rest.v1 | https://github.com/api-bricks/api-bricks-sdk/packages/397337 |
Java | Maven<br/>(GitHub Packages) | WebSocket | io.coinapi.websocket.v1 | https://github.com/api-bricks/api-bricks-sdk/packages/397352 |
Python3 | PyPI | REST | coinapi.rest.v1 | ![PyPI](https://img.shields.io/pypi/v/coinapi.rest.v1) |

## Language coverage

In this repository you can find libraries that will help you use our API with minimal development effort from languages like:
 * Python
 * R
 * Matlab
 * C#
 * C++
 * .NET
 * Java
 * Ruby
 * Go
 * JavaScript
 * TypeScript
 * Node.js
 * PHP
 * Haskell
 * Objective-C
 * Swift

Feel free to make Pull Request with proposed changes or create an Issue on which we respond as soon as possible.

