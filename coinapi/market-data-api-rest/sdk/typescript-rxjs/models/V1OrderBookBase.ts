// tslint:disable
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

/**
 * Represents the base model for order book data.
 * @export
 * @interface V1OrderBookBase
 */
export interface V1OrderBookBase {
    /**
     * The symbol identifier.
     * @type {string}
     * @memberof V1OrderBookBase
     */
    symbol_id?: string | null;
    /**
     * The exchange time of the order book.
     * @type {string}
     * @memberof V1OrderBookBase
     */
    time_exchange?: string;
    /**
     * The CoinAPI time when the order book was received.
     * @type {string}
     * @memberof V1OrderBookBase
     */
    time_coinapi?: string;
    /**
     * The asks made by market makers.
     * @type {any}
     * @memberof V1OrderBookBase
     */
    asks?: any | null;
    /**
     * The bids made by market makers.
     * @type {any}
     * @memberof V1OrderBookBase
     */
    bids?: any | null;
}
