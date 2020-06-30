package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.OrderStatus;
import org.openapitools.model.TimeInForce;

@Canonical
class OrderData {
    /* Exchange name */
    String exchangeId
    /* Client unique identifier for the trade. */
    String id
    /* Hash client id */
    String clientOrderIdFormatExchange
    /* Exchange order id */
    String exchangeOrderId
    /* Amount open */
    BigDecimal amountOpen
    /* Amount filled */
    BigDecimal amountFilled
    
    OrderStatus status
    /* History of order status changes */
    List<List<String>> timeOrder = new ArrayList<List<String>>()
    /* Error message */
    String errorMessage
    /* Client unique identifier for the trade. */
    String clientOrderId
    /* The symbol of the order. */
    String symbolExchange
    /* The CoinAPI symbol of the order. */
    String symbolCoinapi
    /* Quoted decimal amount to purchase. */
    BigDecimal amountOrder
    /* Quoted decimal amount to spend per unit. */
    BigDecimal price
    /* Buy or Sell */
    String side
    /* The order type. */
    String orderType
    
    TimeInForce timeInForce
    /* Required for orders with time_in_force = GOOD_TILL_TIME_EXCHANGE, GOOD_TILL_TIME_OMS */
    Date expireTime = null
    /* TODO: description exec inst  | Parameter | Description | |-----------|--------| | `MAKER_OR_CANCEL` | Rests on the continuous order book at a specified price. If any quantity can be filled immediately, the entire order is canceled. | ##### Exec inst options  | Exchange | MAKER_OR_CANCEL | | --- | --- | | BINANCE | X | | BITFINEX | X | | BITMEX | X | | BLOCKCHAINEXCHANGE | X | | BITSTAMP |  | | COINBASE | X | | GEMINI | X | | KRAKEN | X | | POLONIEX | X | | HITBTC |  | | KRAKENFTS | X |  */
    List<String> execInst = new ArrayList<ExecInstEnum>()
}
