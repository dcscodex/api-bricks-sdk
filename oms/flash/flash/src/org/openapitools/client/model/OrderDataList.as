package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.OrderStatus;
import org.openapitools.client.model.TimeInForce;

    public class OrderDataList implements ListWrapper {
        // This declaration below of _order_data_obj_class is to force flash compiler to include this class
        private var _orderData_obj_class: org.openapitools.client.model.OrderData = null;
        [XmlElements(name="orderData", type="org.openapitools.client.model.OrderData")]
        public var orderData: Array = new Array();

        public function getList(): Array{
            return orderData;
        }

}

}
