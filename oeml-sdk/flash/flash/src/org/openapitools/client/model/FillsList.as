package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;

    public class FillsList implements ListWrapper {
        // This declaration below of _Fills_obj_class is to force flash compiler to include this class
        private var _fills_obj_class: org.openapitools.client.model.Fills = null;
        [XmlElements(name="fills", type="org.openapitools.client.model.Fills")]
        public var fills: Array = new Array();

        public function getList(): Array{
            return fills;
        }

}

}
