package org.openapitools.client.model {

import org.openapitools.client.model.Fills;
import org.openapitools.client.model.OrdStatus;

    [XmlRootNode(name="OrderExecutionReportAllOf")]
    public class OrderExecutionReportAllOf {
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
        /* Calculated average price of all fills on this order. */
        [XmlElement(name="avg_px")]
        public var avgPx: Number = 0.0;
                [XmlElement(name="status")]
        public var status: OrdStatus = NaN;
        /* Timestamped history of order status changes. */
        // This declaration below of _statusHistory_obj_class is to force flash compiler to include this class
        private var _statusHistory_obj_class: Array = null;
        [XmlElementWrapper(name="status_history")]
        [XmlElements(name="statusHistory", type="Array")]
                public var statusHistory: Array = new Array();
        /* Error message. */
        [XmlElement(name="error_message")]
        public var errorMessage: String = null;
        /* Relay fill information on working orders. */
        // This declaration below of _fills_obj_class is to force flash compiler to include this class
        private var _fills_obj_class: Array = null;
        [XmlElementWrapper(name="fills")]
        [XmlElements(name="fills", type="Array")]
                public var fills: Array = new Array();

    public function toString(): String {
        var str: String = "OrderExecutionReportAllOf: ";
        str += " (clientOrderIdFormatExchange: " + clientOrderIdFormatExchange + ")";
        str += " (exchangeOrderId: " + exchangeOrderId + ")";
        str += " (amountOpen: " + amountOpen + ")";
        str += " (amountFilled: " + amountFilled + ")";
        str += " (avgPx: " + avgPx + ")";
        str += " (status: " + status + ")";
        str += " (statusHistory: " + statusHistory + ")";
        str += " (errorMessage: " + errorMessage + ")";
        str += " (fills: " + fills + ")";
        return str;
    }

}

}
