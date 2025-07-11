/**
 *
 * Please note:
 * This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * Do not edit this file manually.
 *
 */

@file:Suppress(
    "ArrayInDataClass",
    "EnumEntryName",
    "RemoveRedundantQualifierName",
    "UnusedImport"
)

package org.openapitools.client.models


import com.squareup.moshi.Json
import com.squareup.moshi.JsonClass

/**
 * Represents the response DTO for quote update information
 *
 * @param symbol The stock symbol
 * @param timestampNanos Original timestamp in nanoseconds since epoch
 * @param timestamp Time when the quote update was recorded as DateTime
 * @param isSymbolAvailable Gets whether the symbol is available for trading True if active, False if halted, paused, or otherwise not available
 * @param isPrePostMarketSession Gets whether the market session is regular or pre/post-market True if pre/post-market session, False if regular market session
 * @param askSize Ask size in number of shares
 * @param askPrice Ask price as decimal
 * @param bidPrice Bid price as decimal
 * @param bidSize Bid size in number of shares
 */


data class Level1QuoteUpdateModel (

    /* The stock symbol */
    @Json(name = "symbol")
    val symbol: kotlin.String? = null,

    /* Original timestamp in nanoseconds since epoch */
    @Json(name = "timestamp_nanos")
    val timestampNanos: kotlin.Long? = null,

    /* Time when the quote update was recorded as DateTime */
    @Json(name = "timestamp")
    val timestamp: java.time.OffsetDateTime? = null,

    /* Gets whether the symbol is available for trading True if active, False if halted, paused, or otherwise not available */
    @Json(name = "is_symbol_available")
    val isSymbolAvailable: kotlin.Boolean? = null,

    /* Gets whether the market session is regular or pre/post-market True if pre/post-market session, False if regular market session */
    @Json(name = "is_pre_post_market_session")
    val isPrePostMarketSession: kotlin.Boolean? = null,

    /* Ask size in number of shares */
    @Json(name = "ask_size")
    val askSize: kotlin.Int? = null,

    /* Ask price as decimal */
    @Json(name = "ask_price")
    val askPrice: kotlin.Double? = null,

    /* Bid price as decimal */
    @Json(name = "bid_price")
    val bidPrice: kotlin.Double? = null,

    /* Bid size in number of shares */
    @Json(name = "bid_size")
    val bidSize: kotlin.Int? = null

) {


}

