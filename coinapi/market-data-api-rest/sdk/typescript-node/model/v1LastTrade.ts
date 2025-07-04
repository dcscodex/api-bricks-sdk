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

/**
* Represents the last executed transaction.
*/
export class V1LastTrade {
    /**
    * The exchange time of the last trade.
    */
    'timeExchange'?: Date;
    /**
    * The CoinAPI time when the last trade was received.
    */
    'timeCoinapi'?: Date;
    /**
    * The UUID of the last trade.
    */
    'uuid'?: string;
    /**
    * The price of the last trade.
    */
    'price'?: number;
    /**
    * The size of the last trade.
    */
    'size'?: number;
    /**
    * The taker side of the last trade.
    */
    'takerSide'?: string | null;

    static discriminator: string | undefined = undefined;

    static attributeTypeMap: Array<{name: string, baseName: string, type: string}> = [
        {
            "name": "timeExchange",
            "baseName": "time_exchange",
            "type": "Date"
        },
        {
            "name": "timeCoinapi",
            "baseName": "time_coinapi",
            "type": "Date"
        },
        {
            "name": "uuid",
            "baseName": "uuid",
            "type": "string"
        },
        {
            "name": "price",
            "baseName": "price",
            "type": "number"
        },
        {
            "name": "size",
            "baseName": "size",
            "type": "number"
        },
        {
            "name": "takerSide",
            "baseName": "taker_side",
            "type": "string"
        }    ];

    static getAttributeTypeMap() {
        return V1LastTrade.attributeTypeMap;
    }
}

