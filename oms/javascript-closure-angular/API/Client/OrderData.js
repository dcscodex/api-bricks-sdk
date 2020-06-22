goog.provide('API.Client.order_data');

/**
 * @record
 */
API.Client.OrderData = function() {}

/**
 * Exchange name
 * @type {!string}
 * @export
 */
API.Client.OrderData.prototype.exchangeId;

/**
 * Client unique identifier for the trade.
 * @type {!string}
 * @export
 */
API.Client.OrderData.prototype.id;

/**
 * Hash client id
 * @type {!string}
 * @export
 */
API.Client.OrderData.prototype.clientOrderIdFormatExchange;

/**
 * Exchange order id
 * @type {!string}
 * @export
 */
API.Client.OrderData.prototype.exchangeOrderId;

/**
 * Amount open
 * @type {!number}
 * @export
 */
API.Client.OrderData.prototype.amountOpen;

/**
 * Amount filled
 * @type {!number}
 * @export
 */
API.Client.OrderData.prototype.amountFilled;

/**
 * @type {!API.Client.orderStatus}
 * @export
 */
API.Client.OrderData.prototype.status;

/**
 * History of order status changes
 * @type {!Array<!Array<!string>>}
 * @export
 */
API.Client.OrderData.prototype.timeOrder;

/**
 * Error message
 * @type {!string}
 * @export
 */
API.Client.OrderData.prototype.errorMessage;

/**
 * Client unique identifier for the trade.
 * @type {!string}
 * @export
 */
API.Client.OrderData.prototype.clientOrderId;

/**
 * The symbol of the order.
 * @type {!string}
 * @export
 */
API.Client.OrderData.prototype.symbolExchange;

/**
 * The CoinAPI symbol of the order.
 * @type {!string}
 * @export
 */
API.Client.OrderData.prototype.symbolCoinapi;

/**
 * Quoted decimal amount to purchase.
 * @type {!number}
 * @export
 */
API.Client.OrderData.prototype.amountOrder;

/**
 * Quoted decimal amount to spend per unit.
 * @type {!number}
 * @export
 */
API.Client.OrderData.prototype.price;

/**
 * Buy or Sell
 * @type {!string}
 * @export
 */
API.Client.OrderData.prototype.side;

/**
 * The order type.
 * @type {!string}
 * @export
 */
API.Client.OrderData.prototype.orderType;

/**
 * @type {!API.Client.timeInForce}
 * @export
 */
API.Client.OrderData.prototype.timeInForce;

/**
 * Required for orders with time_in_force = GOOD_TILL_TIME_EXCHANGE, GOOD_TILL_TIME_OMS
 * @type {!API.Client.date}
 * @export
 */
API.Client.OrderData.prototype.expireTime;

/**
 * TODO: description exec inst  | Parameter | Description | |-----------|--------| | `MAKER_OR_CANCEL` | Rests on the continuous order book at a specified price. If any quantity can be filled immediately, the entire order is canceled. | ##### Exec inst options  | Exchange | MAKER_OR_CANCEL | | --- | --- | | BINANCE | X | | BITFINEX | X | | BITMEX | X | | BLOCKCHAINEXCHANGE | X | | BITSTAMP |  | | COINBASE | X | | GEMINI | X | | KRAKEN | X | | POLONIEX | X | | HITBTC |  | | KRAKENFTS | X | 
 * @type {!Array<!string>}
 * @export
 */
API.Client.OrderData.prototype.execInst;

/** @enum {string} */
API.Client.OrderData.SideEnum = { 
  BUY: 'BUY',
  SELL: 'SELL',
}
/** @enum {string} */
API.Client.OrderData.OrderTypeEnum = { 
  LIMIT: 'LIMIT',
}
/** @enum {string} */
API.Client.OrderData.Array&lt;!ExecInstEnum&gt; = { 
  MAKER_OR_CANCEL: 'MAKER_OR_CANCEL',
}
