package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class Level3ModifyOrderModel {
    /* The stock symbol */
    String symbol
    /* Original timestamp in nanoseconds since epoch */
    Long timestampNanos
    /* Time when the order was modified as DateTime (UTC) */
    Date timestamp
    /* Order identifier reference */
    Long orderIdReference
    /* Indicates if priority is reseted */
    Boolean isPriorityReset
    /* New total quoted size in number of shares */
    Integer size
    /* Price as decimal */
    Double price
}
