package org.openapitools.client.model {


    [XmlRootNode(name="MessagesInfo")]
    public class MessagesInfo {
        /* Type of message */
        [XmlElement(name="type")]
        public var type: String = null;
        /* Exchange name */
        [XmlElement(name="exchange_id")]
        public var exchangeId: String = null;
        /* Error message */
        [XmlElement(name="error_message")]
        public var errorMessage: String = null;

    public function toString(): String {
        var str: String = "MessagesInfo: ";
        str += " (type: " + type + ")";
        str += " (exchangeId: " + exchangeId + ")";
        str += " (errorMessage: " + errorMessage + ")";
        return str;
    }

}

}
