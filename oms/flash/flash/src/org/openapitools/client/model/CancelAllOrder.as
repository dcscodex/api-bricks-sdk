package org.openapitools.client.model {


    [XmlRootNode(name="CancelAllOrder")]
    public class CancelAllOrder {
        /* Exchange name */
        [XmlElement(name="exchange_id")]
        public var exchangeId: String = null;

    public function toString(): String {
        var str: String = "CancelAllOrder: ";
        str += " (exchangeId: " + exchangeId + ")";
        return str;
    }

}

}
