package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;

    public class MessagesInfoList implements ListWrapper {
        // This declaration below of _messagesInfo_obj_class is to force flash compiler to include this class
        private var _messagesInfo_obj_class: org.openapitools.client.model.MessagesInfo = null;
        [XmlElements(name="messagesInfo", type="org.openapitools.client.model.MessagesInfo")]
        public var messagesInfo: Array = new Array();

        public function getList(): Array{
            return messagesInfo;
        }

}

}
