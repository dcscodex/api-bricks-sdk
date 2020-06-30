package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;

    public class MessagesOkList implements ListWrapper {
        // This declaration below of _messagesOk_obj_class is to force flash compiler to include this class
        private var _messagesOk_obj_class: org.openapitools.client.model.MessagesOk = null;
        [XmlElements(name="messagesOk", type="org.openapitools.client.model.MessagesOk")]
        public var messagesOk: Array = new Array();

        public function getList(): Array{
            return messagesOk;
        }

}

}
