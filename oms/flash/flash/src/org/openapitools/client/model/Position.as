package org.openapitools.client.model {

import org.openapitools.client.model.PositionData;

    [XmlRootNode(name="Position")]
    public class Position {
        /* Result type. */
        [XmlElement(name="type")]
        public var type: String = null;
        /* Name of exchange. */
        [XmlElement(name="exchange_name")]
        public var exchangeName: String = null;
                // This declaration below of _data_obj_class is to force flash compiler to include this class
        private var _data_obj_class: Array = null;
        [XmlElementWrapper(name="data")]
        [XmlElements(name="data", type="Array")]
                public var data: Array = new Array();

    public function toString(): String {
        var str: String = "Position: ";
        str += " (type: " + type + ")";
        str += " (exchangeName: " + exchangeName + ")";
        str += " (data: " + data + ")";
        return str;
    }

}

}
