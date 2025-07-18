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
 * Represents a timeseries item with price and volume information.
 */
export interface ModelsExchangeTimeseriesItem {
    /**
     * The start time of the time period.
     */
    time_period_start?: string;

    /**
     * The end time of the time period.
     */
    time_period_end?: string;

    /**
     * The time when the price opened.
     */
    time_open?: string;

    /**
     * The time when the price closed.
     */
    time_close?: string;

    /**
     * The opening price.
     */
    price_open?: number;

    /**
     * The highest price during the time period.
     */
    price_high?: number;

    /**
     * The lowest price during the time period.
     */
    price_low?: number;

    /**
     * The closing price.
     */
    price_close?: number;

    /**
     * The total volume traded during the time period.
     */
    volume_traded?: number;

    /**
     * The number of trades executed during the time period.
     */
    trades_count?: number;

    symbol_id_exchange?: string;

    symbol_id_coinapi?: string;

}
