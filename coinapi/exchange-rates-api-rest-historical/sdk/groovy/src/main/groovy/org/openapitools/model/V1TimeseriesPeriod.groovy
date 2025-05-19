package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class V1TimeseriesPeriod {
    /* The period ID. */
    String periodId
    /* The length of the period in seconds. */
    Integer lengthSeconds
    /* The length of the period in months. */
    Integer lengthMonths
    /* The unit count. */
    Integer unitCount
    /* The unit name. */
    String unitName
    /* The display name of the timeseries period. */
    String displayName
}
