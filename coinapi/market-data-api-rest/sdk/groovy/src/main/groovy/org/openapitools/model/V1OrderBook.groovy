package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class V1OrderBook {
    /* The symbol identifier. */
    String symbolId
    /* The exchange time of the order book. */
    Date timeExchange
    /* The CoinAPI time when the order book was received. */
    Date timeCoinapi
    /* The asks made by market makers. */
    Object asks = null
    /* The bids made by market makers. */
    Object bids = null
}
