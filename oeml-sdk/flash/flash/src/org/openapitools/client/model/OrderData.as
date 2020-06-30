package org.openapitools.client.model {

import org.openapitools.client.model.OrderStatus;
import org.openapitools.client.model.TimeInForce;

    [XmlRootNode(name="OrderData")]
    public class OrderData {
        /* Exchange name */
        [XmlElement(name="exchange_id")]
        public var exchangeId: String = null;
        /* Client unique identifier for the trade. */
        [XmlElement(name="id")]
        public var id: String = null;
        /* Hash client id */
        [XmlElement(name="client_order_id_format_exchange")]
        public var clientOrderIdFormatExchange: String = null;
        /* Exchange order id */
        [XmlElement(name="exchange_order_id")]
        public var exchangeOrderId: String = null;
        /* Amount open */
        [XmlElement(name="amount_open")]
        public var amountOpen: Number = 0.0;
        /* Amount filled */
        [XmlElement(name="amount_filled")]
        public var amountFilled: Number = 0.0;
                [XmlElement(name="status")]
        public var status: OrderStatus = NaN;
        /* History of order status changes */
        // This declaration below of _timeOrder_obj_class is to force flash compiler to include this class
        private var _timeOrder_obj_class: Array = null;
        [XmlElementWrapper(name="time_order")]
        [XmlElements(name="timeOrder", type="Array")]
                public var timeOrder: Array = new Array();
        /* Error message */
        [XmlElement(name="error_message")]
        public var errorMessage: String = null;
        /* Client unique identifier for the trade. */
        [XmlElement(name="client_order_id")]
        public var clientOrderId: String = null;
        /* The symbol of the order. */
        [XmlElement(name="symbol_exchange")]
        public var symbolExchange: String = null;
        /* The CoinAPI symbol of the order. */
        [XmlElement(name="symbol_coinapi")]
        public var symbolCoinapi: String = null;
        /* Quoted decimal amount to purchase. */
        [XmlElement(name="amount_order")]
        public var amountOrder: Number = 0.0;
        /* Quoted decimal amount to spend per unit. */
        [XmlElement(name="price")]
        public var price: Number = 0.0;
        /* Buy or Sell */
        [XmlElement(name="side")]
        public var side: String = null;
        /* The order type. */
        [XmlElement(name="order_type")]
        public var orderType: String = null;
                [XmlElement(name="time_in_force")]
        public var timeInForce: TimeInForce = NaN;
        /* Required for orders with time_in_force &#x3D; GOOD_TILL_TIME_EXCHANGE, GOOD_TILL_TIME_OMS */
        [XmlElement(name="expire_time")]
        public var expireTime: Date = NaN;
        /* TODO: description exec inst  | Parameter | Description | |-----------|--------| | &#x60;MAKER_OR_CANCEL&#x60; | Rests on the continuous order book at a specified price. If any quantity can be filled immediately, the entire order is canceled. | ##### Exec inst options  | Exchange | MAKER_OR_CANCEL | | --- | --- | | BINANCE | X | | BITFINEX | X | | BITMEX | X | | BLOCKCHAINEXCHANGE | X | | BITSTAMP |  | | COINBASE | X | | GEMINI | X | | KRAKEN | X | | POLONIEX | X | | HITBTC |  | | KRAKENFTS | X |  */
        // This declaration below of _execInst_obj_class is to force flash compiler to include this class
        private var _execInst_obj_class: Array = null;
        [XmlElementWrapper(name="exec_inst")]
        [XmlElements(name="execInst", type="Array")]
                public var execInst: Array = new Array();

    public function toString(): String {
        var str: String = "OrderData: ";
        str += " (exchangeId: " + exchangeId + ")";
        str += " (id: " + id + ")";
        str += " (clientOrderIdFormatExchange: " + clientOrderIdFormatExchange + ")";
        str += " (exchangeOrderId: " + exchangeOrderId + ")";
        str += " (amountOpen: " + amountOpen + ")";
        str += " (amountFilled: " + amountFilled + ")";
        str += " (status: " + status + ")";
        str += " (timeOrder: " + timeOrder + ")";
        str += " (errorMessage: " + errorMessage + ")";
        str += " (clientOrderId: " + clientOrderId + ")";
        str += " (symbolExchange: " + symbolExchange + ")";
        str += " (symbolCoinapi: " + symbolCoinapi + ")";
        str += " (amountOrder: " + amountOrder + ")";
        str += " (price: " + price + ")";
        str += " (side: " + side + ")";
        str += " (orderType: " + orderType + ")";
        str += " (timeInForce: " + timeInForce + ")";
        str += " (expireTime: " + expireTime + ")";
        str += " (execInst: " + execInst + ")";
        return str;
    }

}

}
