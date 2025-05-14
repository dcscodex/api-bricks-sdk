package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class AdminSecurityEventModel {
    /* The stock symbol */
    String symbol
    /* Original timestamp in nanoseconds since epoch */
    Long timestampNanos
    /* Time when the security event was recorded as DateTime */
    Date timestamp
    /* Security event as byte value */
    Integer securityEvent
    /* Security event as character string ('O' or 'C') */
    String securityEventCode
    /* Human-readable description of the security event */
    String securityEventText
    /* Indicates if the security event is 'Opening Process Complete' ('O'/0x4f). */
    Boolean isOpeningProcessComplete
    /* Indicates if the security event is 'Closing Process Complete' ('C'/0x43). */
    Boolean isClosingProcessComplete
}
