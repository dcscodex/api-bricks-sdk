goog.provide('API.Client.newOrder');

/**
 * @record
 */
API.Client.NewOrder = function() {}

/**
 * Exchange name
 * @type {!string}
 * @export
 */
API.Client.NewOrder.prototype.exchangeId;

/**
 * Client unique identifier for the trade.
 * @type {!string}
 * @export
 */
API.Client.NewOrder.prototype.clientOrderId;

/**
 * The symbol of the order.
 * @type {!string}
 * @export
 */
API.Client.NewOrder.prototype.symbolExchange;

/**
 * The CoinAPI symbol of the order.
 * @type {!string}
 * @export
 */
API.Client.NewOrder.prototype.symbolCoinapi;

/**
 * Quoted decimal amount to purchase.
 * @type {!number}
 * @export
 */
API.Client.NewOrder.prototype.amountOrder;

/**
 * Quoted decimal amount to spend per unit.
 * @type {!number}
 * @export
 */
API.Client.NewOrder.prototype.price;

/**
 * Buy or Sell
 * @type {!string}
 * @export
 */
API.Client.NewOrder.prototype.side;

/**
 * The order type.
 * @type {!string}
 * @export
 */
API.Client.NewOrder.prototype.orderType;

/**
 * @type {!API.Client.timeInForce}
 * @export
 */
API.Client.NewOrder.prototype.timeInForce;

/**
 * Required for orders with time_in_force = GOOD_TILL_TIME_EXCHANGE, GOOD_TILL_TIME_OMS
 * @type {!API.Client.date}
 * @export
 */
API.Client.NewOrder.prototype.expireTime;

/**
 * TODO: description exec inst  | Parameter | Description | |-----------|--------| | `MAKER_OR_CANCEL` | Rests on the continuous order book at a specified price. If any quantity can be filled immediately, the entire order is canceled. | ##### Exec inst options  | Exchange | MAKER_OR_CANCEL | | --- | --- | | BINANCE | X | | BITFINEX | X | | BITMEX | X | | BLOCKCHAINEXCHANGE | X | | BITSTAMP |  | | COINBASE | X | | GEMINI | X | | KRAKEN | X | | POLONIEX | X | | HITBTC |  | | KRAKENFTS | X | 
 * @type {!Array<!string>}
 * @export
 */
API.Client.NewOrder.prototype.execInst;

/** @enum {string} */
API.Client.NewOrder.SideEnum = { 
  BUY: 'BUY',
  SELL: 'SELL',
}
/** @enum {string} */
API.Client.NewOrder.OrderTypeEnum = { 
  LIMIT: 'LIMIT',
}
/** @enum {string} */
API.Client.NewOrder.Array&lt;!ExecInstEnum&gt; = { 
  MAKER_OR_CANCEL: 'MAKER_OR_CANCEL',
}
