package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.UUID;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class V1LastTrade {
    /* The exchange time of the last trade. */
    Date timeExchange
    /* The CoinAPI time when the last trade was received. */
    Date timeCoinapi
    /* The UUID of the last trade. */
    UUID uuid
    /* The price of the last trade. */
    Double price
    /* The size of the last trade. */
    Double size
    /* The taker side of the last trade. */
    String takerSide
}
