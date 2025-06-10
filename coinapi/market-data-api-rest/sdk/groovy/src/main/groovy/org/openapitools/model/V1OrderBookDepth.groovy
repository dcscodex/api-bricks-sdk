package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class V1OrderBookDepth {
    /* The symbol identifier. */
    String symbolId
    /* The exchange time of the order book. */
    Date timeExchange
    /* The CoinAPI time when the order book was received. */
    Date timeCoinapi
    /* The number of ask levels in the order book. */
    Long askLevels
    /* The number of bid levels in the order book. */
    Long bidLevels
    /* The depth of the ask side of the order book. */
    Double askDepth
    /* The depth of the bid side of the order book. */
    Double bidDepth
}
