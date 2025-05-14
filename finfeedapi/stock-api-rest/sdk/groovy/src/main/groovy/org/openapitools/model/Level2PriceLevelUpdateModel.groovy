package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class Level2PriceLevelUpdateModel {
    /* The stock symbol */
    String symbol
    /* Original timestamp in nanoseconds since epoch */
    Long timestampNanos
    /* Time when the price level update was recorded as DateTime */
    Date timestamp
    /* Indicates if this is a price level update for the Buy Side. */
    Boolean isSideBuy
    /* Indicates if event processing is complete. */
    Boolean isEventProcessingComplete
    /* Aggregate quoted size at the price level */
    Integer size
    /* Price level as decimal */
    Double price
}
