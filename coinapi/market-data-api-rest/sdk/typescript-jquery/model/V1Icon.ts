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

import * as models from './models';

/**
 * Represents an icon.
 */
export interface V1Icon {
    /**
     * Gets or sets the exchange ID associated with the icon.
     */
    exchange_id?: string;

    /**
     * Gets or sets the asset ID associated with the icon.
     */
    asset_id?: string;

    /**
     * Gets or sets the URL of the icon.
     */
    url?: string;

}
