package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class AdminSecurityDirectoryModel {
    /* The stock symbol */
    String symbol
    /* Original timestamp in nanoseconds since epoch */
    Long timestampNanos
    /* Time when the security directory information was recorded as DateTime */
    Date timestamp
    /* Flags for the security */
    Integer flags
    /* Number of shares that represent a round lot */
    Integer roundLotSize
    /* Adjusted previous official closing price as decimal */
    Double adjustedPocPrice
    /* LULD tier as byte value */
    Integer luldTier
    /* LULD tier as numeric string */
    String luldTierCode
    /* Human-readable description of the LULD tier */
    String luldTierText
    /* Indicates if LULD Tier is 'Not applicable' (0x0). */
    Boolean isLuldTierNotApplicable
    /* Indicates if LULD Tier is 'Tier 1 NMS Stock' (0x1). */
    Boolean isLuldTier1
    /* Indicates if LULD Tier is 'Tier 2 NMS Stock' (0x2). */
    Boolean isLuldTier2
}
