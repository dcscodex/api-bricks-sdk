package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;

    public class OrdStatusList implements ListWrapper {
        // This declaration below of _OrdStatus_obj_class is to force flash compiler to include this class
        private var _ordStatus_obj_class: org.openapitools.client.model.OrdStatus = null;
        [XmlElements(name="ordStatus", type="org.openapitools.client.model.OrdStatus")]
        public var ordStatus: Array = new Array();

        public function getList(): Array{
            return ordStatus;
        }

}

}
