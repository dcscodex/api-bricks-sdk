package org.openapitools.client.model {

import org.openapitools.client.model.TimeInForce;

    [XmlRootNode(name="NewOrder")]
    public class NewOrder {
        /* Exchange name */
        [XmlElement(name="exchange_id")]
        public var exchangeId: String = null;
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
        var str: String = "NewOrder: ";
        str += " (exchangeId: " + exchangeId + ")";
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
