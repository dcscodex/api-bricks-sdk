package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;

    public class CancelAllOrderList implements ListWrapper {
        // This declaration below of _cancelAllOrder_obj_class is to force flash compiler to include this class
        private var _cancelAllOrder_obj_class: org.openapitools.client.model.CancelAllOrder = null;
        [XmlElements(name="cancelAllOrder", type="org.openapitools.client.model.CancelAllOrder")]
        public var cancelAllOrder: Array = new Array();

        public function getList(): Array{
            return cancelAllOrder;
        }

}

}
