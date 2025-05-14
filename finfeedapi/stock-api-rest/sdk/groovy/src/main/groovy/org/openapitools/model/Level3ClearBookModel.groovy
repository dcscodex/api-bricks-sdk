package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class Level3ClearBookModel {
    /* The stock symbol */
    String symbol
    /* Original timestamp in nanoseconds since epoch */
    Long timestampNanos
    /* Time when the book was cleared as DateTime */
    Date timestamp
}
