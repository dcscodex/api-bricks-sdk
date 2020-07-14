package org.openapitools.client.model {

import org.openapitools.client.model.OrdSide;
import org.openapitools.client.model.OrdType;
import org.openapitools.client.model.TimeInForce;

    [XmlRootNode(name="OrderNewSingleRequest")]
    public class OrderNewSingleRequest {
        /* Exchange identifier used to identify the routing destination. */
        [XmlElement(name="exchange_id")]
        public var exchangeId: String = null;
        /* The unique identifier of the order assigned by the client. */
        [XmlElement(name="client_order_id")]
        public var clientOrderId: String = null;
        /* Exchange symbol. One of the properties (&#x60;symbol_id_exchange&#x60;, &#x60;symbol_id_coinapi&#x60;) is required to identify the market for the new order. */
        [XmlElement(name="symbol_id_exchange")]
        public var symbolIdExchange: String = null;
        /* CoinAPI symbol. One of the properties (&#x60;symbol_id_exchange&#x60;, &#x60;symbol_id_coinapi&#x60;) is required to identify the market for the new order. */
        [XmlElement(name="symbol_id_coinapi")]
        public var symbolIdCoinapi: String = null;
        /* Order quantity. */
        [XmlElement(name="amount_order")]
        public var amountOrder: Number = 0.0;
        /* Order price. */
        [XmlElement(name="price")]
        public var price: Number = 0.0;
                [XmlElement(name="side")]
        public var side: OrdSide = NaN;
                [XmlElement(name="order_type")]
        public var orderType: OrdType = NaN;
                [XmlElement(name="time_in_force")]
        public var timeInForce: TimeInForce = NaN;
        /* Expiration time. Conditionaly required for orders with time_in_force &#x3D; &#x60;GOOD_TILL_TIME_EXCHANGE&#x60; or &#x60;GOOD_TILL_TIME_OEML&#x60;. */
        [XmlElement(name="expire_time")]
        public var expireTime: Date = NaN;
        /* Order execution instructions are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-params-exec\&quot;&gt;OEML / Starter Guide / Order parameters / Execution instructions&lt;/a&gt;  */
        // This declaration below of _execInst_obj_class is to force flash compiler to include this class
        private var _execInst_obj_class: Array = null;
        [XmlElementWrapper(name="exec_inst")]
        [XmlElements(name="execInst", type="Array")]
                public var execInst: Array = new Array();

    public function toString(): String {
        var str: String = "OrderNewSingleRequest: ";
        str += " (exchangeId: " + exchangeId + ")";
        str += " (clientOrderId: " + clientOrderId + ")";
        str += " (symbolIdExchange: " + symbolIdExchange + ")";
        str += " (symbolIdCoinapi: " + symbolIdCoinapi + ")";
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
