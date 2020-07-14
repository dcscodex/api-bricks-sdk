package org.openapitools.client.model {

import org.openapitools.client.model.OrdSide;
import org.openapitools.client.model.OrdStatus;
import org.openapitools.client.model.OrdType;
import org.openapitools.client.model.OrderExecutionReportAllOf;
import org.openapitools.client.model.OrderNewSingleRequest;
import org.openapitools.client.model.TimeInForce;

    [XmlRootNode(name="OrderExecutionReport")]
    public class OrderExecutionReport {
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
        /* The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it. */
        [XmlElement(name="client_order_id_format_exchange")]
        public var clientOrderIdFormatExchange: String = null;
        /* Unique identifier of the order assigned by the exchange or executing system. */
        [XmlElement(name="exchange_order_id")]
        public var exchangeOrderId: String = null;
        /* Quantity open for further execution. &#x60;amount_open&#x60; &#x3D; &#x60;amount_order&#x60; - &#x60;amount_filled&#x60; */
        [XmlElement(name="amount_open")]
        public var amountOpen: Number = 0.0;
        /* Total quantity filled. */
        [XmlElement(name="amount_filled")]
        public var amountFilled: Number = 0.0;
                [XmlElement(name="status")]
        public var status: OrdStatus = NaN;
        /* Timestamped history of order status changes. */
        // This declaration below of _timeOrder_obj_class is to force flash compiler to include this class
        private var _timeOrder_obj_class: Array = null;
        [XmlElementWrapper(name="time_order")]
        [XmlElements(name="timeOrder", type="Array")]
                public var timeOrder: Array = new Array();
        /* Error message */
        [XmlElement(name="error_message")]
        public var errorMessage: String = null;

    public function toString(): String {
        var str: String = "OrderExecutionReport: ";
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
        str += " (clientOrderIdFormatExchange: " + clientOrderIdFormatExchange + ")";
        str += " (exchangeOrderId: " + exchangeOrderId + ")";
        str += " (amountOpen: " + amountOpen + ")";
        str += " (amountFilled: " + amountFilled + ")";
        str += " (status: " + status + ")";
        str += " (timeOrder: " + timeOrder + ")";
        str += " (errorMessage: " + errorMessage + ")";
        return str;
    }

}

}
