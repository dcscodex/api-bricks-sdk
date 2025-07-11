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

import * as models from './models';

/**
 * Represents the response DTO for security event information
 */
export interface AdminSecurityEventModel {
    /**
     * The stock symbol
     */
    symbol?: string;

    /**
     * Original timestamp in nanoseconds since epoch
     */
    timestamp_nanos?: number;

    /**
     * Time when the security event was recorded as DateTime
     */
    timestamp?: string;

    /**
     * Security event as byte value
     */
    security_event?: number;

    /**
     * Security event as character string (\'O\' or \'C\')
     */
    security_event_code?: string;

    /**
     * Human-readable description of the security event
     */
    security_event_text?: string;

    /**
     * Indicates if the security event is \'Opening Process Complete\' (\'O\'/0x4f).
     */
    is_opening_process_complete?: boolean;

    /**
     * Indicates if the security event is \'Closing Process Complete\' (\'C\'/0x43).
     */
    is_closing_process_complete?: boolean;

}
