package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class V1MetricData {
    /* Gets or sets the symbol id. */
    String symbolId
    /* Gets or sets the time at which the value is recorded. */
    Date time
    /* Gets or sets the value of the metric. */
    Double value
}
