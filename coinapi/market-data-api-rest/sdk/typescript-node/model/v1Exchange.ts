/**
 * CoinAPI Market Data REST API
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
import { V1Icon } from './v1Icon';

/**
* Represents an exchange.
*/
export class V1Exchange {
    /**
    * Gets or sets the exchange ID.
    */
    'exchangeId'?: string | null;
    /**
    * Gets or sets the website URL of the exchange.
    */
    'website'?: string | null;
    /**
    * Gets or sets the name of the exchange.
    */
    'name'?: string | null;
    'dataStart'?: string | null;
    'dataEnd'?: string | null;
    /**
    * Gets or sets the start date of quote data.
    */
    'dataQuoteStart'?: Date | null;
    /**
    * Gets or sets the end date of quote data.
    */
    'dataQuoteEnd'?: Date | null;
    /**
    * Gets or sets the start date of order book data.
    */
    'dataOrderbookStart'?: Date | null;
    /**
    * Gets or sets the end date of order book data.
    */
    'dataOrderbookEnd'?: Date | null;
    /**
    * Gets or sets the start date of trade data.
    */
    'dataTradeStart'?: Date | null;
    /**
    * Gets or sets the end date of trade data.
    */
    'dataTradeEnd'?: Date | null;
    /**
    * Gets or sets the number of trades.
    */
    'dataTradeCount'?: number | null;
    /**
    * Gets or sets the number of symbols.
    */
    'dataSymbolsCount'?: number | null;
    /**
    * Gets or sets the USD volume in the last 1 hour.
    */
    'volume1hrsUsd'?: number | null;
    /**
    * Gets or sets the USD volume in the last 1 day.
    */
    'volume1dayUsd'?: number | null;
    /**
    * Gets or sets the USD volume in the last 1 month.
    */
    'volume1mthUsd'?: number | null;
    /**
    * Gets or sets the list of metric IDs.
    */
    'metricId'?: Array<string> | null;
    /**
    * Gets or sets the list of icons for the exchange.
    */
    'icons'?: Array<V1Icon> | null;
    /**
    * Rank of the exchange.
    */
    'rank'?: number;
    /**
    * Status of the integration
    */
    'integrationStatus'?: string | null;

    static discriminator: string | undefined = undefined;

    static attributeTypeMap: Array<{name: string, baseName: string, type: string}> = [
        {
            "name": "exchangeId",
            "baseName": "exchange_id",
            "type": "string"
        },
        {
            "name": "website",
            "baseName": "website",
            "type": "string"
        },
        {
            "name": "name",
            "baseName": "name",
            "type": "string"
        },
        {
            "name": "dataStart",
            "baseName": "data_start",
            "type": "string"
        },
        {
            "name": "dataEnd",
            "baseName": "data_end",
            "type": "string"
        },
        {
            "name": "dataQuoteStart",
            "baseName": "data_quote_start",
            "type": "Date"
        },
        {
            "name": "dataQuoteEnd",
            "baseName": "data_quote_end",
            "type": "Date"
        },
        {
            "name": "dataOrderbookStart",
            "baseName": "data_orderbook_start",
            "type": "Date"
        },
        {
            "name": "dataOrderbookEnd",
            "baseName": "data_orderbook_end",
            "type": "Date"
        },
        {
            "name": "dataTradeStart",
            "baseName": "data_trade_start",
            "type": "Date"
        },
        {
            "name": "dataTradeEnd",
            "baseName": "data_trade_end",
            "type": "Date"
        },
        {
            "name": "dataTradeCount",
            "baseName": "data_trade_count",
            "type": "number"
        },
        {
            "name": "dataSymbolsCount",
            "baseName": "data_symbols_count",
            "type": "number"
        },
        {
            "name": "volume1hrsUsd",
            "baseName": "volume_1hrs_usd",
            "type": "number"
        },
        {
            "name": "volume1dayUsd",
            "baseName": "volume_1day_usd",
            "type": "number"
        },
        {
            "name": "volume1mthUsd",
            "baseName": "volume_1mth_usd",
            "type": "number"
        },
        {
            "name": "metricId",
            "baseName": "metric_id",
            "type": "Array<string>"
        },
        {
            "name": "icons",
            "baseName": "icons",
            "type": "Array<V1Icon>"
        },
        {
            "name": "rank",
            "baseName": "rank",
            "type": "number"
        },
        {
            "name": "integrationStatus",
            "baseName": "integration_status",
            "type": "string"
        }    ];

    static getAttributeTypeMap() {
        return V1Exchange.attributeTypeMap;
    }
}

