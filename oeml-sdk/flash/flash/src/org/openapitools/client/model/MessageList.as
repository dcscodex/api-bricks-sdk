package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.Severity;

    public class MessageList implements ListWrapper {
        // This declaration below of _Message_obj_class is to force flash compiler to include this class
        private var _message_obj_class: org.openapitools.client.model.Message = null;
        [XmlElements(name="message", type="org.openapitools.client.model.Message")]
        public var message: Array = new Array();

        public function getList(): Array{
            return message;
        }

}

}
