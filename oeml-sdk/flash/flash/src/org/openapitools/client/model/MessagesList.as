package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;

    public class MessagesList implements ListWrapper {
        // This declaration below of _messages_obj_class is to force flash compiler to include this class
        private var _messages_obj_class: org.openapitools.client.model.Messages = null;
        [XmlElements(name="messages", type="org.openapitools.client.model.Messages")]
        public var messages: Array = new Array();

        public function getList(): Array{
            return messages;
        }

}

}
