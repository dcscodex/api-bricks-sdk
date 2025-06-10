package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class V1MetricInfo {
    /* Gets or sets the metric identifier. */
    String metricId
    /* Gets or sets the description of the metric. */
    String description
    /* Gets or sets the source identifier of the metric. */
    String sourceId
}
