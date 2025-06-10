package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class V1SymbolMapping {
    /* The symbol ID. */
    String symbolId
    /* The exchange-specific symbol ID. */
    String symbolIdExchange
    /* The CoinAPI DataInfo ID. */
    Integer coinapiDatainfoId
    /* The exchange-specific base asset ID. */
    String assetIdBaseExchange
    /* The exchange-specific quote asset ID. */
    String assetIdQuoteExchange
    /* The base asset ID. */
    String assetIdBase
    /* The quote asset ID. */
    String assetIdQuote
    /* The price precision. */
    Double pricePrecision
    /* The size precision. */
    Double sizePrecision
}
