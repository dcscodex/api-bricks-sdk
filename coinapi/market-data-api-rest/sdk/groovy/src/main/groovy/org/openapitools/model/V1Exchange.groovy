package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.jackson.nullable.JsonNullable;
import org.openapitools.model.V1Icon;

@Canonical
class V1Exchange {
    /* Gets or sets the exchange ID. */
    String exchangeId
    /* Gets or sets the website URL of the exchange. */
    String website
    /* Gets or sets the name of the exchange. */
    String name
    
    String dataStart
    
    String dataEnd
    /* Gets or sets the start date of quote data. */
    Date dataQuoteStart
    /* Gets or sets the end date of quote data. */
    Date dataQuoteEnd
    /* Gets or sets the start date of order book data. */
    Date dataOrderbookStart
    /* Gets or sets the end date of order book data. */
    Date dataOrderbookEnd
    /* Gets or sets the start date of trade data. */
    Date dataTradeStart
    /* Gets or sets the end date of trade data. */
    Date dataTradeEnd
    /* Gets or sets the number of trades. */
    Long dataTradeCount
    /* Gets or sets the number of symbols. */
    Long dataSymbolsCount
    /* Gets or sets the USD volume in the last 1 hour. */
    Double volume1hrsUsd
    /* Gets or sets the USD volume in the last 1 day. */
    Double volume1dayUsd
    /* Gets or sets the USD volume in the last 1 month. */
    Double volume1mthUsd
    /* Gets or sets the list of metric IDs. */
    List<String> metricId
    /* Gets or sets the list of icons for the exchange. */
    List<V1Icon> icons
    /* Rank of the exchange. */
    Double rank
    /* Status of the integration */
    String integrationStatus
}
