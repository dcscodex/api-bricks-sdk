package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.OrderStatus;
import org.openapitools.client.model.TimeInForce;

    public class OrderLiveList implements ListWrapper {
        // This declaration below of _orderLive_obj_class is to force flash compiler to include this class
        private var _orderLive_obj_class: org.openapitools.client.model.OrderLive = null;
        [XmlElements(name="orderLive", type="org.openapitools.client.model.OrderLive")]
        public var orderLive: Array = new Array();

        public function getList(): Array{
            return orderLive;
        }

}

}
