package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;

    public class OrderCancelSingleRequestList implements ListWrapper {
        // This declaration below of _OrderCancelSingleRequest_obj_class is to force flash compiler to include this class
        private var _orderCancelSingleRequest_obj_class: org.openapitools.client.model.OrderCancelSingleRequest = null;
        [XmlElements(name="orderCancelSingleRequest", type="org.openapitools.client.model.OrderCancelSingleRequest")]
        public var orderCancelSingleRequest: Array = new Array();

        public function getList(): Array{
            return orderCancelSingleRequest;
        }

}

}
