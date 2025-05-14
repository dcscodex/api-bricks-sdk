package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class AdminOfficialPriceModel {
    /* The stock symbol */
    String symbol
    /* Original timestamp in nanoseconds since epoch */
    Long timestampNanos
    /* Time when the official price was recorded as DateTime */
    Date timestamp
    /* Type of price as byte value */
    Integer priceType
    /* Type of price as character string */
    String priceTypeCode
    /* Human-readable description of the price type */
    String priceTypeText
    /* Indicates if the price type is 'IEX Official Opening Price' ('Q'/0x51). */
    Boolean isPriceTypeOpening
    /* Indicates if the price type is 'IEX Official Closing Price' ('M'/0x4d). */
    Boolean isPriceTypeClosing
    /* Official price as decimal */
    Double officialPrice
}
