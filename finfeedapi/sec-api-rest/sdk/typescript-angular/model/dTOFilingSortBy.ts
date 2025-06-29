/**
 * FinFeedAPI SEC REST API
 *
 * Contact: support@apibricks.io
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


/**
 * Defines sorting options for the filing query.
 */
export const DTOFilingSortBy = {
    AccessionNumber: 'AccessionNumber',
    FilingDate: 'FilingDate',
    ReportDate: 'ReportDate',
    AcceptanceDateTime: 'AcceptanceDateTime',
    Size: 'Size'
} as const;
export type DTOFilingSortBy = typeof DTOFilingSortBy[keyof typeof DTOFilingSortBy];

