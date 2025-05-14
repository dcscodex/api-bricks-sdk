package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class V1ExchangeRatesRate {
    /* Gets or sets the time of the exchange rate. */
    Date time
    /* Gets or sets the quote asset ID of the exchange rate. */
    String assetIdQuote
    /* Gets or sets the exchange rate value. */
    Double rate
}
