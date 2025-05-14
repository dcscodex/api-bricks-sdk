package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class IndexesIndexTimeseriesItem {
    /* Gets or sets the start time of the time period. */
    Date timePeriodStart
    /* Gets or sets the end time of the time period. */
    Date timePeriodEnd
    /* Gets or sets the time when the value opened. */
    Date timeOpen
    /* Gets or sets the time when the value closed. */
    Date timeClose
    /* Gets or sets the opening value. */
    Double valueOpen
    /* Gets or sets the highest value during the time period. */
    Double valueHigh
    /* Gets or sets the lowest value during the time period. */
    Double valueLow
    /* Gets or sets the closing value. */
    Double valueClose
    /* Gets or sets the number of values during the time period. */
    Long valueCount
}
