package org.openapitools.client.model {


    [XmlRootNode(name="BalanceData")]
    public class BalanceData {
        /* symbol_exchange */
        [XmlElement(name="id")]
        public var id: String = null;
        /* Currency code. */
        [XmlElement(name="symbol_exchange")]
        public var symbolExchange: String = null;
        /* CoinAPI currency code. */
        [XmlElement(name="symbol_coinapi")]
        public var symbolCoinapi: String = null;
        /* The current balance. */
        [XmlElement(name="balance")]
        public var balance: Number = 0.0;
        /* The amount that is available to trade. */
        [XmlElement(name="available")]
        public var available: Number = 0.0;
        /* Blocked funds. */
        [XmlElement(name="locked")]
        public var locked: Number = 0.0;
        /* Source of last modification.  */
        [XmlElement(name="update_origin")]
        public var updateOrigin: String = null;

    public function toString(): String {
        var str: String = "BalanceData: ";
        str += " (id: " + id + ")";
        str += " (symbolExchange: " + symbolExchange + ")";
        str += " (symbolCoinapi: " + symbolCoinapi + ")";
        str += " (balance: " + balance + ")";
        str += " (available: " + available + ")";
        str += " (locked: " + locked + ")";
        str += " (updateOrigin: " + updateOrigin + ")";
        return str;
    }

}

}
