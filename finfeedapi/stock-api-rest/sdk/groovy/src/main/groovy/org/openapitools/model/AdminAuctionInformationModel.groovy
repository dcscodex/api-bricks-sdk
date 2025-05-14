package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class AdminAuctionInformationModel {
    /* The stock symbol */
    String symbol
    /* Original timestamp in nanoseconds since epoch */
    Long timestampNanos
    /* Time when the auction data was recorded as DateTime */
    Date timestamp
    /* Type of auction as byte value */
    Integer auctionType
    /* Type of auction as character string */
    String auctionTypeCode
    /* Human-readable description of the auction type */
    String auctionTypeText
    /* Indicates if the auction type is 'Opening Auction' ('O'/0x4f). */
    Boolean isAuctionTypeOpening
    /* Indicates if the auction type is 'Closing Auction' ('C'/0x43). */
    Boolean isAuctionTypeClosing
    /* Indicates if the auction type is 'IPO Auction' ('I'/0x49). */
    Boolean isAuctionTypeIpo
    /* Indicates if the auction type is 'Halt Auction' ('H'/0x48). */
    Boolean isAuctionTypeHalt
    /* Indicates if the auction type is 'Volatility Auction' ('V'/0x56). */
    Boolean isAuctionTypeVolatility
    /* Number of shares paired at the Reference Price */
    Integer pairedShares
    /* Reference price as decimal */
    Double referencePrice
    /* Indicative clearing price as decimal */
    Double indicativeClearingPrice
    /* Number of unpaired shares at the Reference Price */
    Integer imbalanceShares
    /* Side of the imbalance as byte value */
    Integer imbalanceSide
    /* Side of the imbalance as character string */
    String imbalanceSideCode
    /* Human-readable description of the imbalance side */
    String imbalanceSideText
    /* Indicates if there is a buy-side imbalance ('B'/0x42). */
    Boolean isImbalanceSideBuy
    /* Indicates if there is a sell-side imbalance ('S'/0x53). */
    Boolean isImbalanceSideSell
    /* Indicates if there is no imbalance ('N'/0x4e). */
    Boolean isImbalanceSideNone
    /* Number of extensions to the auction */
    Integer extensionNumber
    /* Scheduled auction time in seconds since epoch */
    Integer scheduledAuctionTimeSeconds
    /* Scheduled time for the auction as DateTime */
    Date scheduledAuctionTime
    /* Auction book clearing price as decimal */
    Double auctionBookClearingPrice
    /* Collar reference price as decimal */
    Double collarReferencePrice
    /* Lower auction collar as decimal */
    Double lowerAuctionCollar
    /* Upper auction collar as decimal */
    Double upperAuctionCollar
}
