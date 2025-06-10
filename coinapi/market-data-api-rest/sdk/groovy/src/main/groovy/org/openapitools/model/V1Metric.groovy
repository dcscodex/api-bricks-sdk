package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class V1Metric {
    /* Gets or sets the metric ID. */
    String metricId
    /* Gets or sets the metric description. */
    String description
}
