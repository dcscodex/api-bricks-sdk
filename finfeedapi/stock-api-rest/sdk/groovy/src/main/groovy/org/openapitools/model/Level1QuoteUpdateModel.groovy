package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class Level1QuoteUpdateModel {
    /* The stock symbol */
    String symbol
    /* Original timestamp in nanoseconds since epoch */
    Long timestampNanos
    /* Time when the quote update was recorded as DateTime */
    Date timestamp
    /* Gets whether the symbol is available for trading True if active, False if halted, paused, or otherwise not available */
    Boolean isSymbolAvailable
    /* Gets whether the market session is regular or pre/post-market True if pre/post-market session, False if regular market session */
    Boolean isPrePostMarketSession
    /* Ask size in number of shares */
    Integer askSize
    /* Ask price as decimal */
    Double askPrice
    /* Bid price as decimal */
    Double bidPrice
    /* Bid size in number of shares */
    Integer bidSize
}
