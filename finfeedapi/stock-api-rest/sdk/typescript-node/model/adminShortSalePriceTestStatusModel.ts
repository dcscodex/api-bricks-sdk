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
* Represents the response DTO for short sale price test status information
*/
export class AdminShortSalePriceTestStatusModel {
    /**
    * The stock symbol
    */
    'symbol'?: string | null;
    /**
    * Original timestamp in nanoseconds since epoch
    */
    'timestampNanos'?: number;
    /**
    * Time when the short sale price test status was recorded as DateTime
    */
    'timestamp'?: Date;
    /**
    * Short sale price test status as byte value
    */
    'shortSalePriceTestStatus'?: number;
    /**
    * Short sale price test status as hex string
    */
    'shortSalePriceTestStatusCode'?: string | null;
    /**
    * Human-readable description of the short sale price test status
    */
    'shortSalePriceTestStatusText'?: string | null;
    /**
    * Indicates if the short sale price test is not in effect
    */
    'isShortSalePriceTestNotInEffect'?: boolean;
    /**
    * Indicates if the short sale price test is in effect
    */
    'isShortSalePriceTestInEffect'?: boolean;
    /**
    * Detail of the short sale price test as byte value
    */
    'detail'?: number;
    /**
    * Detail of the short sale price test as character string
    */
    'detailCode'?: string | null;
    /**
    * Human-readable description of the short sale price test detail
    */
    'detailText'?: string | null;
    /**
    * Indicates if there is no price test in place
    */
    'isDetailNoPriceTest'?: boolean;
    /**
    * Indicates if the short sale price test restriction is in effect due to an intraday price drop
    */
    'isDetailActivated'?: boolean;
    /**
    * Indicates if the short sale price test restriction remains in effect from prior day
    */
    'isDetailContinued'?: boolean;
    /**
    * Indicates if the short sale price test restriction is deactivated
    */
    'isDetailDeactivated'?: boolean;
    /**
    * Indicates if the detail is not available
    */
    'isDetailNotAvailable'?: boolean;

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
            "name": "shortSalePriceTestStatus",
            "baseName": "short_sale_price_test_status",
            "type": "number"
        },
        {
            "name": "shortSalePriceTestStatusCode",
            "baseName": "short_sale_price_test_status_code",
            "type": "string"
        },
        {
            "name": "shortSalePriceTestStatusText",
            "baseName": "short_sale_price_test_status_text",
            "type": "string"
        },
        {
            "name": "isShortSalePriceTestNotInEffect",
            "baseName": "is_short_sale_price_test_not_in_effect",
            "type": "boolean"
        },
        {
            "name": "isShortSalePriceTestInEffect",
            "baseName": "is_short_sale_price_test_in_effect",
            "type": "boolean"
        },
        {
            "name": "detail",
            "baseName": "detail",
            "type": "number"
        },
        {
            "name": "detailCode",
            "baseName": "detail_code",
            "type": "string"
        },
        {
            "name": "detailText",
            "baseName": "detail_text",
            "type": "string"
        },
        {
            "name": "isDetailNoPriceTest",
            "baseName": "is_detail_no_price_test",
            "type": "boolean"
        },
        {
            "name": "isDetailActivated",
            "baseName": "is_detail_activated",
            "type": "boolean"
        },
        {
            "name": "isDetailContinued",
            "baseName": "is_detail_continued",
            "type": "boolean"
        },
        {
            "name": "isDetailDeactivated",
            "baseName": "is_detail_deactivated",
            "type": "boolean"
        },
        {
            "name": "isDetailNotAvailable",
            "baseName": "is_detail_not_available",
            "type": "boolean"
        }    ];

    static getAttributeTypeMap() {
        return AdminShortSalePriceTestStatusModel.attributeTypeMap;
    }
}

