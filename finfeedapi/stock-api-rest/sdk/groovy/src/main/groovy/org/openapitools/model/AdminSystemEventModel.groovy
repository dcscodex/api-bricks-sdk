package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class AdminSystemEventModel {
    /* Original timestamp in nanoseconds since epoch */
    Long timestampNanos
    /* Time when the system event was recorded as DateTime */
    Date timestamp
    /* System event as byte value */
    Integer systemEvent
    /* System event as string */
    String systemEventCode
    /* Human-readable description of the system event */
    String systemEventText
    /* Indicates if the system event is 'Start of Messages' (O). Outside of heartbeat messages on the lower level protocol,  the start of day message is the first message sent in any trading session. */
    Boolean isSystemEventStartOfMessages
    /* Indicates if the system event is 'Start of System Hours' (S). This message indicates that IEX is open and ready to start accepting orders. */
    Boolean isSystemEventStartOfSystemHours
    /* Indicates if the system event is 'Start of Regular Market Hours' (R). This message indicates that DAY and GTX orders, as well as market orders and pegged orders,  are available for execution on IEX. */
    Boolean isSystemEventStartOfRegularMarketHours
    /* Indicates if the system event is 'End of Regular Market Hours' (M). This message indicates that DAY orders, market orders, and pegged orders  are no longer accepted by IEX. */
    Boolean isSystemEventEndOfRegularMarketHours
    /* Indicates if the system event is 'End of System Hours' (E). This message indicates that IEX is now closed and will not accept  any new orders during this trading session. It is still possible  to receive messages after the end of day. */
    Boolean isSystemEventEndOfSystemHours
    /* Indicates if the system event is 'End of Messages' (C). This is always the last message sent in any trading session. */
    Boolean isSystemEventEndOfMessages
}
