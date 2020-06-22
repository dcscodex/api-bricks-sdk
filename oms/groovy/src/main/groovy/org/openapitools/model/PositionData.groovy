package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;

@Canonical
class PositionData {
    /* Unique position ID */
    String id
    /* The contract for this position. */
    String symbolExchange
    /* The coinapi contract for this position. */
    String symbolCoinapi
    
    BigDecimal avgEntryPrice
    /* The current position amount in contracts. */
    BigDecimal quantity
    
    Boolean isBuy
    /* Unrealised PNL is all the unrealised profit or loss coming from your portfolio's open positions. */
    BigDecimal unrealisedPnL
    /* 1 / initMarginReq. */
    BigDecimal leverage
    /* True/false depending on whether you set cross margin on this position. */
    Boolean crossMargin
    /* Once markPrice reaches this price, this position will be liquidated. */
    BigDecimal liquidationPrice
    
    String rawData
}
