package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.Object;
import org.openapitools.client.model.OrdSide;

    public class PositionDataList implements ListWrapper {
        // This declaration below of _Position_data_obj_class is to force flash compiler to include this class
        private var _positionData_obj_class: org.openapitools.client.model.PositionData = null;
        [XmlElements(name="positionData", type="org.openapitools.client.model.PositionData")]
        public var positionData: Array = new Array();

        public function getList(): Array{
            return positionData;
        }

}

}
