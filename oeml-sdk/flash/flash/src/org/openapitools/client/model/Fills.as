package org.openapitools.client.model {


    [XmlRootNode(name="Fills")]
    public class Fills {
        /* Execution time. */
        [XmlElement(name="time")]
        public var time: Date = NaN;
        /* Execution price. */
        [XmlElement(name="price")]
        public var price: Number = 0.0;
        /* Executed quantity. */
        [XmlElement(name="amount")]
        public var amount: Number = 0.0;

    public function toString(): String {
        var str: String = "Fills: ";
        str += " (time: " + time + ")";
        str += " (price: " + price + ")";
        str += " (amount: " + amount + ")";
        return str;
    }

}

}
