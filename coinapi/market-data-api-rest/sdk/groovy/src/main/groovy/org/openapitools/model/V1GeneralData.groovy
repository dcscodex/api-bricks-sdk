package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class V1GeneralData {
    /* Gets or sets the entry time for the data point. */
    Date entryTime
    /* Gets or sets the received time for the data point. */
    Date recvTime
    /* Gets or sets the identifier for the exchange. */
    String exchangeId
    /* Gets or sets the identifier for the asset. */
    String assetId
    /* Gets or sets the identifier for the symbol. */
    String symbolId
    /* Gets or sets the identifier for the metric. */
    String metricId
    /* Gets or sets the decimal value for the metric. */
    Double valueDecimal
    /* Gets or sets the textual representation of the value for the metric. */
    String valueText
    /* Gets or sets the timestamp value for the metric. */
    Date valueTime
}
