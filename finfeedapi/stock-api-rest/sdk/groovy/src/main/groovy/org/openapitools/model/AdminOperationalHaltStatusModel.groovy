package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class AdminOperationalHaltStatusModel {
    /* The stock symbol */
    String symbol
    /* Original timestamp in nanoseconds since epoch */
    Long timestampNanos
    /* Time when the operational halt status was recorded as DateTime */
    Date timestamp
    /* Operational halt status as byte value */
    Integer operationalHaltStatus
    /* Operational halt status as character string */
    String operationalHaltStatusCode
    /* Human-readable description of the operational halt status */
    String operationalHaltStatusText
    /* Indicates if the status is 'IEX specific operational trading halt' ('O'/0x4f). */
    Boolean isOperationallyHalted
    /* Indicates if the status is 'Not operationally halted on IEX' ('N'/0x4e). */
    Boolean isNotOperationallyHalted
}
