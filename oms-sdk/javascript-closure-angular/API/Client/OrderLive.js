goog.provide('API.Client.orderLive');

/**
 * @record
 */
API.Client.OrderLive = function() {}

/**
 * Result type name
 * @type {!string}
 * @export
 */
API.Client.OrderLive.prototype.type;

/**
 * Exchange name
 * @type {!string}
 * @export
 */
API.Client.OrderLive.prototype.exchangeId;

/**
 * Client unique identifier for the trade.
 * @type {!string}
 * @export
 */
API.Client.OrderLive.prototype.id;

/**
 * Hash client id
 * @type {!string}
 * @export
 */
API.Client.OrderLive.prototype.clientOrderIdFormatExchange;

/**
 * Exchange order id
 * @type {!string}
 * @export
 */
API.Client.OrderLive.prototype.exchangeOrderId;

/**
 * Amount open
 * @type {!number}
 * @export
 */
API.Client.OrderLive.prototype.amountOpen;

/**
 * Amount filled
 * @type {!number}
 * @export
 */
API.Client.OrderLive.prototype.amountFilled;

/**
 * @type {!API.Client.orderStatus}
 * @export
 */
API.Client.OrderLive.prototype.status;

/**
 * History of order status changes
 * @type {!Array<!Array<!string>>}
 * @export
 */
API.Client.OrderLive.prototype.timeOrder;

/**
 * Error message
 * @type {!string}
 * @export
 */
API.Client.OrderLive.prototype.errorMessage;

/**
 * Client unique identifier for the trade.
 * @type {!string}
 * @export
 */
API.Client.OrderLive.prototype.clientOrderId;

/**
 * The symbol of the order.
 * @type {!string}
 * @export
 */
API.Client.OrderLive.prototype.symbolExchange;

/**
 * The CoinAPI symbol of the order.
 * @type {!string}
 * @export
 */
API.Client.OrderLive.prototype.symbolCoinapi;

/**
 * Quoted decimal amount to purchase.
 * @type {!number}
 * @export
 */
API.Client.OrderLive.prototype.amountOrder;

/**
 * Quoted decimal amount to spend per unit.
 * @type {!number}
 * @export
 */
API.Client.OrderLive.prototype.price;

/**
 * Buy or Sell
 * @type {!string}
 * @export
 */
API.Client.OrderLive.prototype.side;

/**
 * The order type.
 * @type {!string}
 * @export
 */
API.Client.OrderLive.prototype.orderType;

/**
 * @type {!API.Client.timeInForce}
 * @export
 */
API.Client.OrderLive.prototype.timeInForce;

/**
 * Required for orders with time_in_force = GOOD_TILL_TIME_EXCHANGE, GOOD_TILL_TIME_OMS
 * @type {!API.Client.date}
 * @export
 */
API.Client.OrderLive.prototype.expireTime;

/**
 * TODO: description exec inst  | Parameter | Description | |-----------|--------| | `MAKER_OR_CANCEL` | Rests on the continuous order book at a specified price. If any quantity can be filled immediately, the entire order is canceled. | ##### Exec inst options  | Exchange | MAKER_OR_CANCEL | | --- | --- | | BINANCE | X | | BITFINEX | X | | BITMEX | X | | BLOCKCHAINEXCHANGE | X | | BITSTAMP |  | | COINBASE | X | | GEMINI | X | | KRAKEN | X | | POLONIEX | X | | HITBTC |  | | KRAKENFTS | X | 
 * @type {!Array<!string>}
 * @export
 */
API.Client.OrderLive.prototype.execInst;

/** @enum {string} */
API.Client.OrderLive.SideEnum = { 
  BUY: 'BUY',
  SELL: 'SELL',
}
/** @enum {string} */
API.Client.OrderLive.OrderTypeEnum = { 
  LIMIT: 'LIMIT',
}
/** @enum {string} */
API.Client.OrderLive.Array&lt;!ExecInstEnum&gt; = { 
  MAKER_OR_CANCEL: 'MAKER_OR_CANCEL',
}
