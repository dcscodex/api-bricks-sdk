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
 * Represents a trade executed on the exchange.
 *
 * @param symbolId The symbol identifier.
 * @param timeExchange The time of trade reported by the exchange.
 * @param timeCoinapi The time when the trade was received by CoinAPI.
 * @param uuid The unique identifier for the trade.
 * @param price The price of the transaction.
 * @param propertySize The base asset amount traded in the transaction.
 * @param takerSide The aggressor side of the transaction (BUY/SELL/BUY_ESTIMATED/SELL_ESTIMATED/UNKNOWN).
 * @param idTrade The trade identifier.
 * @param idOrderMaker The order maker identifier.
 * @param idOrderTaker The order taker identifier.
 */


data class V1Trade (

    /* The symbol identifier. */
    @Json(name = "symbol_id")
    val symbolId: kotlin.String? = null,

    /* The time of trade reported by the exchange. */
    @Json(name = "time_exchange")
    val timeExchange: java.time.OffsetDateTime? = null,

    /* The time when the trade was received by CoinAPI. */
    @Json(name = "time_coinapi")
    val timeCoinapi: java.time.OffsetDateTime? = null,

    /* The unique identifier for the trade. */
    @Json(name = "uuid")
    val uuid: java.util.UUID? = null,

    /* The price of the transaction. */
    @Json(name = "price")
    val price: kotlin.Double? = null,

    /* The base asset amount traded in the transaction. */
    @Json(name = "size")
    val propertySize: kotlin.Double? = null,

    /* The aggressor side of the transaction (BUY/SELL/BUY_ESTIMATED/SELL_ESTIMATED/UNKNOWN). */
    @Json(name = "taker_side")
    val takerSide: kotlin.String? = null,

    /* The trade identifier. */
    @Json(name = "id_trade")
    val idTrade: kotlin.String? = null,

    /* The order maker identifier. */
    @Json(name = "id_order_maker")
    val idOrderMaker: kotlin.String? = null,

    /* The order taker identifier. */
    @Json(name = "id_order_taker")
    val idOrderTaker: kotlin.String? = null

) {


}

