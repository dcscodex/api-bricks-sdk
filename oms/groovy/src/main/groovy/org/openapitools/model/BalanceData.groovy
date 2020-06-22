package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class BalanceData {
    /* symbol_exchange */
    String id
    /* Currency code. */
    String symbolExchange
    /* CoinAPI currency code. */
    String symbolCoinapi
    /* The current balance. */
    Float balance
    /* The amount that is available to trade. */
    Float available
    /* Blocked funds. */
    Float locked
    /* Source of last modification.  */
    String updateOrigin
}
