package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;

    public class OrdSideList implements ListWrapper {
        // This declaration below of _OrdSide_obj_class is to force flash compiler to include this class
        private var _ordSide_obj_class: org.openapitools.client.model.OrdSide = null;
        [XmlElements(name="ordSide", type="org.openapitools.client.model.OrdSide")]
        public var ordSide: Array = new Array();

        public function getList(): Array{
            return ordSide;
        }

}

}
