package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.UUID;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class V1Trade {
    /* The symbol identifier. */
    String symbolId
    /* The time of trade reported by the exchange. */
    Date timeExchange
    /* The time when the trade was received by CoinAPI. */
    Date timeCoinapi
    /* The unique identifier for the trade. */
    UUID uuid
    /* The price of the transaction. */
    Double price
    /* The base asset amount traded in the transaction. */
    Double size
    /* The aggressor side of the transaction (BUY/SELL/BUY_ESTIMATED/SELL_ESTIMATED/UNKNOWN). */
    String takerSide
    /* The trade identifier. */
    String idTrade
    /* The order maker identifier. */
    String idOrderMaker
    /* The order taker identifier. */
    String idOrderTaker
}
