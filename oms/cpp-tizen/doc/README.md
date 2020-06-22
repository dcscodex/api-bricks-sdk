# Documentation for OMS - REST API ...@ v1 Tizen Client SDK

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
├── SDK                       \\Documentation for all classes in OMS - REST API ...@ Tizen Client SDK. See ./html/index.html
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
All URIs are relative to http://localhosthttp://localhost:3001

### BalancesManager
Method | HTTP request | Description
------------- | ------------- | -------------
*v1BalancesGetSync* | *GET* /v1/balances | Get balances.
*v1BalancesGetASync* | *GET* /v1/balances | Get balances.

### OrdersManager
Method | HTTP request | Description
------------- | ------------- | -------------
*v1OrdersCancelAllPostSync* | *POST* /v1/orders/cancel/all | Cancel all order.
*v1OrdersCancelAllPostASync* | *POST* /v1/orders/cancel/all | Cancel all order.
*v1OrdersCancelPostSync* | *POST* /v1/orders/cancel | Cancel order.
*v1OrdersCancelPostASync* | *POST* /v1/orders/cancel | Cancel order.
*v1OrdersGetSync* | *GET* /v1/orders | Get orders.
*v1OrdersGetASync* | *GET* /v1/orders | Get orders.
*v1OrdersPostSync* | *POST* /v1/orders | Create new order.
*v1OrdersPostASync* | *POST* /v1/orders | Create new order.

### PositionsManager
Method | HTTP request | Description
------------- | ------------- | -------------
*v1PositionsGetSync* | *GET* /v1/positions | Get positions.
*v1PositionsGetASync* | *GET* /v1/positions | Get positions.


## What are the Model files for the data structures/objects?
Class | Description
------------- | -------------
 *Balance* | 
 *Balance_data* | 
 *CancelAllOrder* | 
 *CancelOrder* | 
 *CreateOrder400* | 
 *Messages* | 
 *MessagesInfo* | 
 *MessagesOk* | 
 *NewOrder* | 
 *Order* | 
 *OrderLive* | 
 *OrderStatus* | Order statuses ##### Status description  | Name | Possible transitions to | Status description  | --- | --- | --- | | RECEIVED | REJECTED, ROUTING | We received an order and will send it to the exchange immedaitely | ROUTING | ROUTED | We are in the process of sending order to the exchange | ROUTED | REJECTED, NEW, PARTIALLY_FILLED, FILLED, CANCELED | Order was sent to the exchange from our side, but it's not yet active in order book | NEW | PARTIALLY_FILLED, FILLED, PENDING_CANCEL, CANCELED | Order is active in the order book and it's untouched | PENDING_CANCEL | NEW, PARTIALLY_FILLED, FILLED, CANCELED | We received order cancel request and relayed it succesfully to the exchange.  | PARTIALLY_FILLED | FILLED, PENDING_CANCEL, CANCELED | Order is active in the order book and it's partially filled | FILLED | | Order is no longer active in the order book as was completely filled  | CANCELED | | Order is no longer active in the order book as was canceled | REJECTED | | Order was rejected by OMS or exchange. ##### Status transitions  | Source Status | Destination status | Description | --- | --- | --- | | | RECEIVED | OMS received new order from you | | NEW | OMS received unseen new order from the exchange (order was relayed to the exchnage outside the OMS) | | PARTIALLY_FILLED | OMS received unseen partially filled order from the exchange (order was relayed to the exchnage outside the OMS) | RECEIVED | REJECTED | OMS rejected your order | RECEIVED | ROUTING | We started relaying order to the exchange | ROUTING | ROUTED | Order was relayed to the exchange and we are waiting to be active in the order book | ROUTED | REJECTED | Exchange rejected your order | ROUTED | NEW | Exchange accepted your passive order into order book | ROUTED | PARTIALLY_FILLED | Exchange actively filled part of your order and the remaining was accepted into order book | ROUTED | FILLED | Exchange actively filled your order in whole. | ROUTED | CANCELED | Exchange canceled your order before accepting it to the order book. | NEW | PARTIALLY_FILLED | Part of your order was filled. | NEW | FILLED | Whole order was filled. | NEW | PENDING_CANCEL | We received cancel request and successfully relayed it to the exchange. | NEW | CANCELED | Your order was canceled. | PARTIALLY_FILLED | FILLED | Remaining active part of the order was filled succesfully. | PARTIALLY_FILLED | PENDING_CANCEL | We received cancel request and successfully relayed it to the exchange. | PARTIALLY_FILLED | CANCELED | Your order was canceled. | PENDING_CANCEL | NEW | Exchange responded to the cancelation message that your order is fully active in the order book. | PENDING_CANCEL | PARTIALLY_FILLED | Your order was filled partially after we relayed cancelation message to the exchange. | PENDING_CANCEL | FILLED | Your order was completely filled before the cancel was executed by the exchange. | PENDING_CANCEL | CANCELED | Your order was canceled. 
 *Order_data* | 
 *Position* | 
 *Position_data* | 
 *TimeInForce* | Time in force is a special instruction used when placing a trade to indicate how long an order will remain active before it is executed or expires. These options are especially important for active traders and allow them to be more specific about the time parameters.  | Parameter | Description | |-----------|--------| | `GOOD_TILL_CANCEL` | A Good-Til-Cancelled (GTC) order is an order to buy or sell a stock that lasts until the order is completed or canceled. Brokerage firms typically limit the length of time an investor can leave a GTC order open.  This time frame may vary from broker to broker.  Investors should contact their brokerage firms to determine what time limit would apply to GTC orders. | | `GOOD_TILL_TIME_EXCHANGE` | The GTTE (Good-til-Date/Time) time in force lets you select an expiration date and time up until which an order will continue to work. Setting this attribute requires both a time in force selection of GTD, a date entry in the Expiration Date field, and a time entry in the Expiration Time field if that level of detail is required. Note that if you only enter a good-till date, the unfilled order will cancel at the close of the market on the specified day. | | `GOOD_TILL_TIME_OMS` | The GTT (GTTO) supported by OMS. | | `FILL_OR_KILL` | Fill or kill (FOK) is a type of time-in-force designation used in securities trading that instructs a brokerage to execute a transaction immediately and completely or not at all. This type of order is most often used by active traders and is usually for a large quantity of stock. The order must be filled in its entirety or canceled (killed). | | `IMMEDIATE_OR_CANCEL` | An immediate or cancel order (IOC) is an order to buy or sell a security that executes all or part immediately and cancels any unfilled portion of the order. An IOC order is one of several \"duration orders\" that investors can use to specify how long the order remains active in the market and under what conditions the order is canceled. Other commonly used duration order types include fill or kill (FOK), all or none (AON) and good ‘till canceled (GTC). Most online trading platforms allow IOC orders to be placed manually or programmed into automated trading strategies. | | `AUCTION_ONLY` | This order will be added to the auction-only (AO) book for the next auction for this symbol. | | `INDICATION_OF_INTEREST` | An indication of interest (IOI) is an underwriting expression showing a conditional, non-binding interest in buying a security that is currently in registration—awaiting approval by the Securities and Exchange Commission (SEC). The investor's broker is required to provide the investor with a preliminary prospectus. However, IOIs in the mergers and acquisitions world has similar intent but is done differently. |  ##### Time in force options  | Exchange | GTC | GTTE | GTTO | FOK | IOC | AO | IOI | | --- | --- | --- | ---- | --- | --- | --- | --- | | BINANCE | X | X |  | X | X |  |  | | BITFINEX | X | X |  | X | X |  |  | | BITMEX | X | X |  |  | X |  |  | | BLOCKCHAINEXCHANGE | X | X |  |  | X |  |  | | BITSTAMP | X | X |  |  | X |  |  | | COINBASE | X |  | X | X | X |  |  | | GEMINI | X | X |  | X | X | X | X | | KRAKEN | X |  | X |  |  |  |  | | POLONIEX | X | X |  | X | X |  |  | | HITBTC | X | X |  | X | X |  |  | | KRAKENFTS | X | X |  |  | X |  |  | 

