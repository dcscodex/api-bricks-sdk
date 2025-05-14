package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class AdminRetailLiquidityIndicatorModel {
    /* The stock symbol */
    String symbol
    /* Original timestamp in nanoseconds since epoch */
    Long timestampNanos
    /* Time when the retail liquidity indicator was recorded as DateTime */
    Date timestamp
    /* Retail liquidity indicator as byte value */
    Integer retailLiquidityIndicator
    /* Retail liquidity indicator as character string */
    String retailLiquidityIndicatorCode
    /* Human-readable description of the retail liquidity indicator */
    String retailLiquidityIndicatorText
    /* Indicates if the indicator is 'Not Applicable' (' '/0x20). */
    Boolean isRetailIndicatorNotApplicable
    /* Indicates if there is 'Buy interest for Retail' ('A'/0x41). */
    Boolean isRetailIndicatorBuyInterest
    /* Indicates if there is 'Sell interest for Retail' ('B'/0x42). */
    Boolean isRetailIndicatorSellInterest
    /* Indicates if there is 'Buy and sell interest for Retail' ('C'/0x43). */
    Boolean isRetailIndicatorBuyAndSellInterest
}
