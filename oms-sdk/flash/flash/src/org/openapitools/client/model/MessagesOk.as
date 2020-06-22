package org.openapitools.client.model {


    [XmlRootNode(name="MessagesOk")]
    public class MessagesOk {
        /* Type of message */
        [XmlElement(name="type")]
        public var type: String = null;
        /* Exchange name */
        [XmlElement(name="exchange_id")]
        public var exchangeId: String = null;
        /* Message */
        [XmlElement(name="message")]
        public var message: String = null;

    public function toString(): String {
        var str: String = "MessagesOk: ";
        str += " (type: " + type + ")";
        str += " (exchangeId: " + exchangeId + ")";
        str += " (message: " + message + ")";
        return str;
    }

}

}
