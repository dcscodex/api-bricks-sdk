package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;

    public class CancelOrderList implements ListWrapper {
        // This declaration below of _cancelOrder_obj_class is to force flash compiler to include this class
        private var _cancelOrder_obj_class: org.openapitools.client.model.CancelOrder = null;
        [XmlElements(name="cancelOrder", type="org.openapitools.client.model.CancelOrder")]
        public var cancelOrder: Array = new Array();

        public function getList(): Array{
            return cancelOrder;
        }

}

}
