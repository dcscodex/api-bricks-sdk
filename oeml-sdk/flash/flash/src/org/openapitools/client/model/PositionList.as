package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.PositionData;

    public class PositionList implements ListWrapper {
        // This declaration below of _Position_obj_class is to force flash compiler to include this class
        private var _position_obj_class: org.openapitools.client.model.Position = null;
        [XmlElements(name="position", type="org.openapitools.client.model.Position")]
        public var position: Array = new Array();

        public function getList(): Array{
            return position;
        }

}

}
