package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class AdminTradingStatusModel {
    /* The stock symbol */
    String symbol
    /* Original timestamp in nanoseconds since epoch */
    Long timestampNanos
    /* Time when the trading status was recorded as DateTime */
    Date timestamp
    /* Gets whether the security is currently trading on IEX */
    Boolean isTradingLive
    /* Gets whether the security is halted across all US equity markets */
    Boolean isTradingHalted
    /* Gets whether the security is in Order Acceptance Period on IEX */
    Boolean isTradingInOrderAcceptancePeriod
    /* Gets whether the security is paused and in Order Acceptance Period on IEX */
    Boolean isTradingPaused
    /* Gets whether the halt reason is News Pending */
    Boolean isReasonHaltNewsPending
    /* Gets whether the halt reason is IPO Not Yet Trading */
    Boolean isReasonIpoNotYetTrading
    /* Gets whether the halt reason is IPO Deferred */
    Boolean isReasonIpoDeferred
    /* Gets whether the order acceptance period reason is Halt News Dissemination */
    Boolean isReasonHaltNewsDissemination
    /* Gets whether the order acceptance period reason is IPO Order Acceptance Period */
    Boolean isReasonIpoOrderAcceptancePeriod
    /* Gets whether the order acceptance period reason is IPO Pre-Launch Period */
    Boolean isReasonIpoPreLaunchPeriod
    /* Gets whether the order acceptance period reason is Market-Wide Circuit Breaker Level 1 – Breached */
    Boolean isReasonMarketWideCircuitBreakerLevel1
    /* Gets whether the order acceptance period reason is Market-Wide Circuit Breaker Level 2 – Breached */
    Boolean isReasonMarketWideCircuitBreakerLevel2
    /* Gets whether the halt reason is Market-Wide Circuit Breaker Level 3 – Breached */
    Boolean isReasonMarketWideCircuitBreakerLevel3
    /* Gets whether the reason is Not Applicable */
    Boolean isReasonNotApplicable
    /* Gets whether the halt reason is Not Available */
    Boolean isReasonNotAvailable
}
