package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;

    public class CreateOrder400List implements ListWrapper {
        // This declaration below of _createOrder400_obj_class is to force flash compiler to include this class
        private var _createOrder400_obj_class: org.openapitools.client.model.CreateOrder400 = null;
        [XmlElements(name="createOrder400", type="org.openapitools.client.model.CreateOrder400")]
        public var createOrder400: Array = new Array();

        public function getList(): Array{
            return createOrder400;
        }

}

}
