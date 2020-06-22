package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class CancelOrder {
    /* Exchange name */
    String exchangeId
    /* Order Id */
    String exchangeOrderId
    /* Client order Id */
    String clientOrderId
}
