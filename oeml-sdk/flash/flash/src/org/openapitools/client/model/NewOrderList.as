package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.TimeInForce;

    public class NewOrderList implements ListWrapper {
        // This declaration below of _newOrder_obj_class is to force flash compiler to include this class
        private var _newOrder_obj_class: org.openapitools.client.model.NewOrder = null;
        [XmlElements(name="newOrder", type="org.openapitools.client.model.NewOrder")]
        public var newOrder: Array = new Array();

        public function getList(): Array{
            return newOrder;
        }

}

}
