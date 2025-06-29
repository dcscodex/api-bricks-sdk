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
import { OptionsStrike } from './optionsStrike';

/**
* Represents an option exchange group data model.
*/
export class OptionsOptionExchangeGroup {
    /**
    * The base asset identifier.
    */
    'assetIdBase'?: string | null;
    /**
    * The quote asset identifier.
    */
    'assetIdQuote'?: string | null;
    /**
    * The underlying price of the option.
    */
    'underlyingPrice'?: number | null;
    /**
    * The expiration time of the option.
    */
    'timeExpiration'?: Date;
    /**
    * The list of strikes available.
    */
    'strikes'?: Array<OptionsStrike> | null;

    static discriminator: string | undefined = undefined;

    static attributeTypeMap: Array<{name: string, baseName: string, type: string}> = [
        {
            "name": "assetIdBase",
            "baseName": "asset_id_base",
            "type": "string"
        },
        {
            "name": "assetIdQuote",
            "baseName": "asset_id_quote",
            "type": "string"
        },
        {
            "name": "underlyingPrice",
            "baseName": "underlying_price",
            "type": "number"
        },
        {
            "name": "timeExpiration",
            "baseName": "time_expiration",
            "type": "Date"
        },
        {
            "name": "strikes",
            "baseName": "strikes",
            "type": "Array<OptionsStrike>"
        }    ];

    static getAttributeTypeMap() {
        return OptionsOptionExchangeGroup.attributeTypeMap;
    }
}

