package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class TradeTradeModel {
    /* Indicates if this record represents a trade break (true) or a trade report (false). */
    Boolean isTradeBreak
    /* The stock symbol. */
    String symbol
    /* Original timestamp in nanoseconds since epoch. */
    Long timestampNanos
    /* Time when the event was recorded as DateTime (UTC). */
    Date timestamp
    /* Trade volume (or break volume) in number of shares. */
    Integer size
    /* Trade price (or break price) as decimal. */
    Double price
    /* IEX trade identifier (same for report and its corresponding break). */
    Long tradeId
    /* Bit 7 (Mask 0x80): Intermarket Sweep Flag.  True: Intermarket Sweep Order (\"ISO\").  False: Non-Intermarket Sweep Order. */
    Boolean isIntermarketSweep
    /* Bit 6 (Mask 0x40): Extended Hours Flag.  True: Extended Hours Trade (i.e., Form T sale condition).  False: Regular Market Session Trade. */
    Boolean isExtendedHoursTrade
    /* Bit 5 (Mask 0x20): Odd Lot Flag.  True: Odd Lot Trade.  False: Round or Mixed Lot Trade. */
    Boolean isOddLotTrade
    /* Bit 4 (Mask 0x10): Trade Through Exempt Flag.  True: Trade is not subject to Rule 611 (Trade Through) of SEC Reg. NMS.  False: Trade is subject to Rule 611 (Trade Through) of SEC Reg. NMS.  Applied when the taking order was an ISO that traded through a protected quotation,  OR the NBBO was crossed at the time of the trade,  OR the trade occurred through a self-helped venue's quotation,  OR the trade was a single-price cross. */
    Boolean isTradeThroughExempt
    /* Bit 3 (Mask 0x08): Single-price Cross Trade Flag.  True: Trade resulting from a single-price cross.  False: Execution during continuous trading. */
    Boolean isSinglePriceCrossTrade
}
