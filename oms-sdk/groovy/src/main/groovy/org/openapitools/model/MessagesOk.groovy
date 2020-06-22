package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class MessagesOk {
    /* Type of message */
    String type
    /* Exchange name */
    String exchangeId
    /* Message */
    String message
}
