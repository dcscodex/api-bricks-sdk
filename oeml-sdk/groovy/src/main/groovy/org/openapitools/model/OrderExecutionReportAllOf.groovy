package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.OrdStatus;

@Canonical
class OrderExecutionReportAllOf {
    /* The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it. */
    String clientOrderIdFormatExchange
    /* Unique identifier of the order assigned by the exchange or executing system. */
    String exchangeOrderId
    /* Quantity open for further execution. `amount_open` = `amount_order` - `amount_filled` */
    BigDecimal amountOpen
    /* Total quantity filled. */
    BigDecimal amountFilled
    
    OrdStatus status
    /* Timestamped history of order status changes. */
    List<List<String>> timeOrder = new ArrayList<List<String>>()
    /* Error message */
    String errorMessage
}
