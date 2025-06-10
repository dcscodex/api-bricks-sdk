package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class V1Quote {
    /* The symbol identifier. */
    String symbolId
    /* The exchange time of the quote. */
    Date timeExchange
    /* The CoinAPI time when the quote was received. */
    Date timeCoinapi
    /* The best asking price. */
    Double askPrice
    /* The volume resting on the best ask. If the value is equal to zero, then the size is unknown. */
    Double askSize
    /* The best bidding price. */
    Double bidPrice
    /* The volume resting on the best bid. If the value is equal to zero, then the size is unknown. */
    Double bidSize
}
