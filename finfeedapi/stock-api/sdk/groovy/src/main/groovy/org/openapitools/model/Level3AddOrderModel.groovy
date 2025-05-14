package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class Level3AddOrderModel {
    /* The stock symbol */
    String symbol
    /* Original timestamp in nanoseconds since epoch */
    Long timestampNanos
    /* Time when the order was added as DateTime (UTC) */
    Date timestamp
    /* Indicates if this is a Buy order ('8'/0x38). */
    Boolean isSideBuy
    /* Quoted size in number of shares */
    Integer size
    /* Price as decimal */
    Double price
    /* Order identifier */
    Long orderId
}
