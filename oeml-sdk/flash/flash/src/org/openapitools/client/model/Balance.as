package org.openapitools.client.model {

import org.openapitools.client.model.BalanceData;

    [XmlRootNode(name="Balance")]
    public class Balance {
        /* Result type. */
        [XmlElement(name="type")]
        public var type: String = null;
        /* Exchange name. */
        [XmlElement(name="exchange_name")]
        public var exchangeName: String = null;
                // This declaration below of _data_obj_class is to force flash compiler to include this class
        private var _data_obj_class: Array = null;
        [XmlElementWrapper(name="data")]
        [XmlElements(name="data", type="Array")]
                public var data: Array = new Array();

    public function toString(): String {
        var str: String = "Balance: ";
        str += " (type: " + type + ")";
        str += " (exchangeName: " + exchangeName + ")";
        str += " (data: " + data + ")";
        return str;
    }

}

}
