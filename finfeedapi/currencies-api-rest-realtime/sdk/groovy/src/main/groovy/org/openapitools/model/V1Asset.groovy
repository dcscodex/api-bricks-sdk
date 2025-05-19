package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.UUID;
import org.openapitools.jackson.nullable.JsonNullable;
import org.openapitools.model.V1ChainNetworkAddress;

@Canonical
class V1Asset {
    /* Gets or sets the asset ID. */
    String assetId
    /* Gets or sets the name of the asset. */
    String name
    /* Gets or sets a value indicating whether the asset is a cryptocurrency. */
    Integer typeIsCrypto
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
    /* Gets or sets the number of symbols. */
    Long dataSymbolsCount
    /* Gets or sets the USD volume in the last 1 hour. */
    Double volume1hrsUsd
    /* Gets or sets the USD volume in the last 1 day. */
    Double volume1dayUsd
    /* Gets or sets the USD volume in the last 1 month. */
    Double volume1mthUsd
    /* Gets or sets the USD price of the asset. */
    Double priceUsd
    /* Gets or sets the ID of the icon for the asset. */
    UUID idIcon
    /* Gets or sets the current supply of the asset. */
    Double supplyCurrent
    /* Gets or sets the total supply of the asset. */
    Double supplyTotal
    /* Gets or sets the maximum supply of the asset. */
    Double supplyMax
    /*  */
    List<V1ChainNetworkAddress> chainAddresses
    
    String dataStart
    
    String dataEnd
}
