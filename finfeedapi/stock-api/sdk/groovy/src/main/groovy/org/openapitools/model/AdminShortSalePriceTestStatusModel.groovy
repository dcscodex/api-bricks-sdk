package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class AdminShortSalePriceTestStatusModel {
    /* The stock symbol */
    String symbol
    /* Original timestamp in nanoseconds since epoch */
    Long timestampNanos
    /* Time when the short sale price test status was recorded as DateTime */
    Date timestamp
    /* Short sale price test status as byte value */
    Integer shortSalePriceTestStatus
    /* Short sale price test status as hex string */
    String shortSalePriceTestStatusCode
    /* Human-readable description of the short sale price test status */
    String shortSalePriceTestStatusText
    /* Indicates if the short sale price test is not in effect */
    Boolean isShortSalePriceTestNotInEffect
    /* Indicates if the short sale price test is in effect */
    Boolean isShortSalePriceTestInEffect
    /* Detail of the short sale price test as byte value */
    Integer detail
    /* Detail of the short sale price test as character string */
    String detailCode
    /* Human-readable description of the short sale price test detail */
    String detailText
    /* Indicates if there is no price test in place */
    Boolean isDetailNoPriceTest
    /* Indicates if the short sale price test restriction is in effect due to an intraday price drop */
    Boolean isDetailActivated
    /* Indicates if the short sale price test restriction remains in effect from prior day */
    Boolean isDetailContinued
    /* Indicates if the short sale price test restriction is deactivated */
    Boolean isDetailDeactivated
    /* Indicates if the detail is not available */
    Boolean isDetailNotAvailable
}
