// tslint:disable
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

/**
 * Represents the response DTO for add order information
 * @export
 * @interface Level3AddOrderModel
 */
export interface Level3AddOrderModel {
    /**
     * The stock symbol
     * @type {string}
     * @memberof Level3AddOrderModel
     */
    symbol?: string | null;
    /**
     * Original timestamp in nanoseconds since epoch
     * @type {number}
     * @memberof Level3AddOrderModel
     */
    timestamp_nanos?: number;
    /**
     * Time when the order was added as DateTime (UTC)
     * @type {string}
     * @memberof Level3AddOrderModel
     */
    timestamp?: string;
    /**
     * Indicates if this is a Buy order (\'8\'/0x38).
     * @type {boolean}
     * @memberof Level3AddOrderModel
     */
    is_side_buy?: boolean;
    /**
     * Quoted size in number of shares
     * @type {number}
     * @memberof Level3AddOrderModel
     */
    size?: number;
    /**
     * Price as decimal
     * @type {number}
     * @memberof Level3AddOrderModel
     */
    price?: number;
    /**
     * Order identifier
     * @type {number}
     * @memberof Level3AddOrderModel
     */
    order_id?: number;
}
