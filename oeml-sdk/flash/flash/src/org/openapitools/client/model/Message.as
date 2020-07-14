package org.openapitools.client.model {

import org.openapitools.client.model.Severity;

    [XmlRootNode(name="Message")]
    public class Message {
        /* Type of message. */
        [XmlElement(name="type")]
        public var type: String = null;
                [XmlElement(name="severity")]
        public var severity: Severity = NaN;
        /* If the message related to exchange, then the identifier of the exchange will be provided. */
        [XmlElement(name="exchange_id")]
        public var exchangeId: String = null;
        /* Message text. */
        [XmlElement(name="message")]
        public var message: String = null;

    public function toString(): String {
        var str: String = "Message: ";
        str += " (type: " + type + ")";
        str += " (severity: " + severity + ")";
        str += " (exchangeId: " + exchangeId + ")";
        str += " (message: " + message + ")";
        return str;
    }

}

}
