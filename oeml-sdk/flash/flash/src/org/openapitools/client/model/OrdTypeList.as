package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;

    public class OrdTypeList implements ListWrapper {
        // This declaration below of _OrdType_obj_class is to force flash compiler to include this class
        private var _ordType_obj_class: org.openapitools.client.model.OrdType = null;
        [XmlElements(name="ordType", type="org.openapitools.client.model.OrdType")]
        public var ordType: Array = new Array();

        public function getList(): Array{
            return ordType;
        }

}

}
