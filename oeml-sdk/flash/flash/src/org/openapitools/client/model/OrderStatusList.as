package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;

    public class OrderStatusList implements ListWrapper {
        // This declaration below of _orderStatus_obj_class is to force flash compiler to include this class
        private var _orderStatus_obj_class: org.openapitools.client.model.OrderStatus = null;
        [XmlElements(name="orderStatus", type="org.openapitools.client.model.OrderStatus")]
        public var orderStatus: Array = new Array();

        public function getList(): Array{
            return orderStatus;
        }

}

}
