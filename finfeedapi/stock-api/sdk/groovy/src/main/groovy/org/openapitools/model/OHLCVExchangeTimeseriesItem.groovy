package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class OHLCVExchangeTimeseriesItem {
    /* Gets or sets the start time of the time period. */
    Date timePeriodStart
    /* Gets or sets the end time of the time period. */
    Date timePeriodEnd
    /* Gets or sets the time when the price opened. */
    Date timeOpen
    /* Gets or sets the time when the price closed. */
    Date timeClose
    /* Gets or sets the opening price. */
    Double priceOpen
    /* Gets or sets the highest price during the time period. */
    Double priceHigh
    /* Gets or sets the lowest price during the time period. */
    Double priceLow
    /* Gets or sets the closing price. */
    Double priceClose
    /* Gets or sets the total volume traded during the time period. */
    Double volumeTraded
    /* Gets or sets the number of trades executed during the time period. */
    Long tradesCount
    
    String symbolIdExchange
}
