package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class OHLCVTimeseriesPeriod {
    /* Gets or sets the period ID. */
    String periodId
    /* Gets or sets the length of the period in seconds. */
    Integer lengthSeconds
    /* Gets or sets the length of the period in months. */
    Integer lengthMonths
    /* Gets or sets the unit count. */
    Integer unitCount
    /* Gets or sets the unit name. */
    String unitName
    /* Gets or sets the display name of the timeseries period. */
    String displayName
}
