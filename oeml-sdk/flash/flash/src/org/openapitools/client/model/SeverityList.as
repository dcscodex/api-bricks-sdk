package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;

    public class SeverityList implements ListWrapper {
        // This declaration below of _Severity_obj_class is to force flash compiler to include this class
        private var _severity_obj_class: org.openapitools.client.model.Severity = null;
        [XmlElements(name="severity", type="org.openapitools.client.model.Severity")]
        public var severity: Array = new Array();

        public function getList(): Array{
            return severity;
        }

}

}
