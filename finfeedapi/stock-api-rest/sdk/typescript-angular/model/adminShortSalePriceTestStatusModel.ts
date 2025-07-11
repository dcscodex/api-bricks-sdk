/**
 * FinFeedAPI Stock REST API
 *
 * Contact: support@apibricks.io
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


/**
 * Represents the response DTO for short sale price test status information
 */
export interface AdminShortSalePriceTestStatusModel { 
    /**
     * The stock symbol
     */
    symbol?: string | null;
    /**
     * Original timestamp in nanoseconds since epoch
     */
    timestamp_nanos?: number;
    /**
     * Time when the short sale price test status was recorded as DateTime
     */
    timestamp?: string;
    /**
     * Short sale price test status as byte value
     */
    short_sale_price_test_status?: number;
    /**
     * Short sale price test status as hex string
     */
    short_sale_price_test_status_code?: string | null;
    /**
     * Human-readable description of the short sale price test status
     */
    short_sale_price_test_status_text?: string | null;
    /**
     * Indicates if the short sale price test is not in effect
     */
    is_short_sale_price_test_not_in_effect?: boolean;
    /**
     * Indicates if the short sale price test is in effect
     */
    is_short_sale_price_test_in_effect?: boolean;
    /**
     * Detail of the short sale price test as byte value
     */
    detail?: number;
    /**
     * Detail of the short sale price test as character string
     */
    detail_code?: string | null;
    /**
     * Human-readable description of the short sale price test detail
     */
    detail_text?: string | null;
    /**
     * Indicates if there is no price test in place
     */
    is_detail_no_price_test?: boolean;
    /**
     * Indicates if the short sale price test restriction is in effect due to an intraday price drop
     */
    is_detail_activated?: boolean;
    /**
     * Indicates if the short sale price test restriction remains in effect from prior day
     */
    is_detail_continued?: boolean;
    /**
     * Indicates if the short sale price test restriction is deactivated
     */
    is_detail_deactivated?: boolean;
    /**
     * Indicates if the detail is not available
     */
    is_detail_not_available?: boolean;
}

