package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class Level3ExecutedOrderModel {
    /* The stock symbol */
    String symbol
    /* Original timestamp in nanoseconds since epoch */
    Long timestampNanos
    /* Time when the order was executed as DateTime */
    Date timestamp
    /* Order identifier reference */
    Long orderIdReference
    /* Sale condition flags for the execution as byte value */
    Integer saleConditionFlags
    /* Bit 7 (Mask 0x80): Intermarket Sweep Flag True: Intermarket Sweep Order (\"ISO\") False: Non-Intermarket Sweep Order */
    Boolean isIntermarketSweep
    /* Bit 6 (Mask 0x40): Extended Hours Flag True: Extended Hours Trade (i.e., Form T sale condition) False: Regular Market Session Trade */
    Boolean isExtendedHoursTrade
    /* Bit 5 (Mask 0x20): Odd Lot Flag True: Odd Lot Trade False: Round or Mixed Lot Trade */
    Boolean isOddLotTrade
    /* Bit 4 (Mask 0x10): Trade Through Exempt Flag True: Trade is not subject to Rule 611 (Trade Through) of SEC Reg. NMS False: Trade is subject to Rule 611 (Trade Through) of SEC Reg. NMS */
    Boolean isTradeThroughExempt
    /* Bit 3 (Mask 0x08): Single-price Cross Trade Flag True: Trade resulting from a single-price cross False: Execution during continuous trading */
    Boolean isSinglePriceCrossTrade
    /* Trade volume in number of shares */
    Integer size
    /* Execution price as decimal */
    Double price
    /* IEX trade identifier */
    Long tradeId
}
