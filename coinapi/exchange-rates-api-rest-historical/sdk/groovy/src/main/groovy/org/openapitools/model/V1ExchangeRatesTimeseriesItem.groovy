package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class V1ExchangeRatesTimeseriesItem {
    /* Gets or sets the start time of the period. */
    Date timePeriodStart
    /* Gets or sets the end time of the period. */
    Date timePeriodEnd
    /* Gets or sets the opening time of the period. */
    Date timeOpen
    /* Gets or sets the closing time of the period. */
    Date timeClose
    /* Gets or sets the opening rate for the period. */
    Double rateOpen
    /* Gets or sets the highest rate for the period. */
    Double rateHigh
    /* Gets or sets the lowest rate for the period. */
    Double rateLow
    /* Gets or sets the closing rate for the period. */
    Double rateClose
}
