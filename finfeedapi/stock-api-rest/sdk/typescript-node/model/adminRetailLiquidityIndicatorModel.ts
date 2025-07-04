/**
 * FinFeedAPI Stock REST API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: v1
 * Contact: support@apibricks.io
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { RequestFile } from './models';

/**
* Represents the response DTO for retail liquidity indicator information
*/
export class AdminRetailLiquidityIndicatorModel {
    /**
    * The stock symbol
    */
    'symbol'?: string | null;
    /**
    * Original timestamp in nanoseconds since epoch
    */
    'timestampNanos'?: number;
    /**
    * Time when the retail liquidity indicator was recorded as DateTime
    */
    'timestamp'?: Date;
    /**
    * Retail liquidity indicator as byte value
    */
    'retailLiquidityIndicator'?: number;
    /**
    * Retail liquidity indicator as character string
    */
    'retailLiquidityIndicatorCode'?: string | null;
    /**
    * Human-readable description of the retail liquidity indicator
    */
    'retailLiquidityIndicatorText'?: string | null;
    /**
    * Indicates if the indicator is \'Not Applicable\' (\' \'/0x20).
    */
    'isRetailIndicatorNotApplicable'?: boolean;
    /**
    * Indicates if there is \'Buy interest for Retail\' (\'A\'/0x41).
    */
    'isRetailIndicatorBuyInterest'?: boolean;
    /**
    * Indicates if there is \'Sell interest for Retail\' (\'B\'/0x42).
    */
    'isRetailIndicatorSellInterest'?: boolean;
    /**
    * Indicates if there is \'Buy and sell interest for Retail\' (\'C\'/0x43).
    */
    'isRetailIndicatorBuyAndSellInterest'?: boolean;

    static discriminator: string | undefined = undefined;

    static attributeTypeMap: Array<{name: string, baseName: string, type: string}> = [
        {
            "name": "symbol",
            "baseName": "symbol",
            "type": "string"
        },
        {
            "name": "timestampNanos",
            "baseName": "timestamp_nanos",
            "type": "number"
        },
        {
            "name": "timestamp",
            "baseName": "timestamp",
            "type": "Date"
        },
        {
            "name": "retailLiquidityIndicator",
            "baseName": "retail_liquidity_indicator",
            "type": "number"
        },
        {
            "name": "retailLiquidityIndicatorCode",
            "baseName": "retail_liquidity_indicator_code",
            "type": "string"
        },
        {
            "name": "retailLiquidityIndicatorText",
            "baseName": "retail_liquidity_indicator_text",
            "type": "string"
        },
        {
            "name": "isRetailIndicatorNotApplicable",
            "baseName": "is_retail_indicator_not_applicable",
            "type": "boolean"
        },
        {
            "name": "isRetailIndicatorBuyInterest",
            "baseName": "is_retail_indicator_buy_interest",
            "type": "boolean"
        },
        {
            "name": "isRetailIndicatorSellInterest",
            "baseName": "is_retail_indicator_sell_interest",
            "type": "boolean"
        },
        {
            "name": "isRetailIndicatorBuyAndSellInterest",
            "baseName": "is_retail_indicator_buy_and_sell_interest",
            "type": "boolean"
        }    ];

    static getAttributeTypeMap() {
        return AdminRetailLiquidityIndicatorModel.attributeTypeMap;
    }
}

