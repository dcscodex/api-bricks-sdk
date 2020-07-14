package org.openapitools.client.model {


    [XmlRootNode(name="OrderCancelSingleRequest")]
    public class OrderCancelSingleRequest {
        /* Exchange identifier used to identify the routing destination. */
        [XmlElement(name="exchange_id")]
        public var exchangeId: String = null;
        /* Unique identifier of the order assigned by the exchange or executing system. One of the properties (&#x60;exchange_order_id&#x60;, &#x60;client_order_id&#x60;) is required to identify the new order. */
        [XmlElement(name="exchange_order_id")]
        public var exchangeOrderId: String = null;
        /* The unique identifier of the order assigned by the client. One of the properties (&#x60;exchange_order_id&#x60;, &#x60;client_order_id&#x60;) is required to identify the new order. */
        [XmlElement(name="client_order_id")]
        public var clientOrderId: String = null;

    public function toString(): String {
        var str: String = "OrderCancelSingleRequest: ";
        str += " (exchangeId: " + exchangeId + ")";
        str += " (exchangeOrderId: " + exchangeOrderId + ")";
        str += " (clientOrderId: " + clientOrderId + ")";
        return str;
    }

}

}
