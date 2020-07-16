package org.openapitools.client.model {


    [XmlRootNode(name="OrderCancelAllRequest")]
    public class OrderCancelAllRequest {
        /* Identifier of the exchange from which active orders should be canceled. */
        [XmlElement(name="exchange_id")]
        public var exchangeId: String = null;

    public function toString(): String {
        var str: String = "OrderCancelAllRequest: ";
        str += " (exchangeId: " + exchangeId + ")";
        return str;
    }

}

}
