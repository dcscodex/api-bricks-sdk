goog.provide('API.Client.Level3.OrderBookModel');

/**
 * Represents the response DTO for Level-3 order book information
 * @record
 */
API.Client.Level3OrderBookModel = function() {}

/**
 * @type {!API.Client.Level3.AddOrderModel}
 * @export
 */
API.Client.Level3OrderBookModel.prototype.addOrder;

/**
 * @type {!API.Client.Level3.DeleteOrderModel}
 * @export
 */
API.Client.Level3OrderBookModel.prototype.deleteOrder;

/**
 * @type {!API.Client.Level3.ModifyOrderModel}
 * @export
 */
API.Client.Level3OrderBookModel.prototype.modifyOrder;

/**
 * @type {!API.Client.Level3.ExecutedOrderModel}
 * @export
 */
API.Client.Level3OrderBookModel.prototype.executedOrder;

/**
 * @type {!API.Client.Level3.ClearBookModel}
 * @export
 */
API.Client.Level3OrderBookModel.prototype.clearBook;

