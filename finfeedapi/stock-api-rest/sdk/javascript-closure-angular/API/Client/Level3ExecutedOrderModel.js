goog.provide('API.Client.Level3.ExecutedOrderModel');

/**
 * Represents the response DTO for order executed information
 * @record
 */
API.Client.Level3ExecutedOrderModel = function() {}

/**
 * The stock symbol
 * @type {!string}
 * @export
 */
API.Client.Level3ExecutedOrderModel.prototype.symbol;

/**
 * Original timestamp in nanoseconds since epoch
 * @type {!number}
 * @export
 */
API.Client.Level3ExecutedOrderModel.prototype.timestampNanos;

/**
 * Time when the order was executed as DateTime
 * @type {!Date}
 * @export
 */
API.Client.Level3ExecutedOrderModel.prototype.timestamp;

/**
 * Order identifier reference
 * @type {!number}
 * @export
 */
API.Client.Level3ExecutedOrderModel.prototype.orderIdReference;

/**
 * Sale condition flags for the execution as byte value
 * @type {!number}
 * @export
 */
API.Client.Level3ExecutedOrderModel.prototype.saleConditionFlags;

/**
 * Bit 7 (Mask 0x80): Intermarket Sweep Flag True: Intermarket Sweep Order (\"ISO\") False: Non-Intermarket Sweep Order
 * @type {!boolean}
 * @export
 */
API.Client.Level3ExecutedOrderModel.prototype.isIntermarketSweep;

/**
 * Bit 6 (Mask 0x40): Extended Hours Flag True: Extended Hours Trade (i.e., Form T sale condition) False: Regular Market Session Trade
 * @type {!boolean}
 * @export
 */
API.Client.Level3ExecutedOrderModel.prototype.isExtendedHoursTrade;

/**
 * Bit 5 (Mask 0x20): Odd Lot Flag True: Odd Lot Trade False: Round or Mixed Lot Trade
 * @type {!boolean}
 * @export
 */
API.Client.Level3ExecutedOrderModel.prototype.isOddLotTrade;

/**
 * Bit 4 (Mask 0x10): Trade Through Exempt Flag True: Trade is not subject to Rule 611 (Trade Through) of SEC Reg. NMS False: Trade is subject to Rule 611 (Trade Through) of SEC Reg. NMS
 * @type {!boolean}
 * @export
 */
API.Client.Level3ExecutedOrderModel.prototype.isTradeThroughExempt;

/**
 * Bit 3 (Mask 0x08): Single-price Cross Trade Flag True: Trade resulting from a single-price cross False: Execution during continuous trading
 * @type {!boolean}
 * @export
 */
API.Client.Level3ExecutedOrderModel.prototype.isSinglePriceCrossTrade;

/**
 * Trade volume in number of shares
 * @type {!number}
 * @export
 */
API.Client.Level3ExecutedOrderModel.prototype.size;

/**
 * Execution price as decimal
 * @type {!number}
 * @export
 */
API.Client.Level3ExecutedOrderModel.prototype.price;

/**
 * IEX trade identifier
 * @type {!number}
 * @export
 */
API.Client.Level3ExecutedOrderModel.prototype.tradeId;

