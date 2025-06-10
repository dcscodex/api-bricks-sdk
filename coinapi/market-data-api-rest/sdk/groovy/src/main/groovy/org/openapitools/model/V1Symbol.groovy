package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.HashMap;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class V1Symbol {
    /* The symbol identifier. */
    String symbolId
    /* The exchange identifier. */
    String exchangeId
    /* The symbol type. */
    String symbolType
    /* The base asset identifier. */
    String assetIdBase
    /* The quote asset identifier. */
    String assetIdQuote
    /* The unit asset identifier. */
    String assetIdUnit
    /* The contract unit for futures. */
    Double futureContractUnit
    /* The asset used as the unit for futures contract. */
    String futureContractUnitAsset
    /* The future delivery time for futures contract. */
    Date futureDeliveryTime
    /* Indicates whether the option type is a call. */
    Boolean optionTypeIsCall
    /* The strike price for options. */
    Double optionStrikePrice
    /* The contract unit for options. */
    Double optionContractUnit
    /* The exercise style for options. */
    String optionExerciseStyle
    /* The expiration time for options. */
    Date optionExpirationTime
    /* The delivery time for contracts. */
    Date contractDeliveryTime
    /* The contract unit for contracts. */
    Double contractUnit
    /* The asset used as the unit for contracts. */
    String contractUnitAsset
    /* The contract identifier. */
    String contractId
    /* The display name of the contract. */
    String contractDisplayName
    /* The display description of the contract. */
    String contractDisplayDescription
    
    String dataStart
    
    String dataEnd
    /* The start date of quote data. */
    Date dataQuoteStart
    /* The end date of quote data. */
    Date dataQuoteEnd
    /* The start date of order book data. */
    Date dataOrderbookStart
    /* The end date of order book data. */
    Date dataOrderbookEnd
    /* The start date of trade data. */
    Date dataTradeStart
    /* The end date of trade data. */
    Date dataTradeEnd
    /* The index identifier. */
    String indexId
    /* The display name of the index. */
    String indexDisplayName
    /* The display description of the index. */
    String indexDisplayDescription
    /* The volume in the last 1 hour. */
    Double volume1hrs
    /* The volume in USD in the last 1 hour. */
    Double volume1hrsUsd
    /* The volume in the last 1 day. */
    Double volume1day
    /* The volume in USD in the last 1 day. */
    Double volume1dayUsd
    /* The volume in the last 1 month. */
    Double volume1mth
    /* The volume in USD in the last 1 month. */
    Double volume1mthUsd
    /* The price. */
    Double price
    /* The symbol identifier in the exchange. */
    String symbolIdExchange
    /* The base asset identifier in the exchange. */
    String assetIdBaseExchange
    /* The quote asset identifier in the exchange. */
    String assetIdQuoteExchange
    /* The price precision. */
    Double pricePrecision
    /* The size precision. */
    Double sizePrecision
    /* Not normalized raw kvp data. */
    Map<String, String> rawKvp
    /* Volume unit in USD. */
    Double volumeToUsd
}
