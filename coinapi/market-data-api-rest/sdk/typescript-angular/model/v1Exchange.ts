/**
 * CoinAPI Market Data REST API
 *
 * Contact: support@apibricks.io
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */
import { V1Icon } from './v1Icon';


/**
 * Represents an exchange.
 */
export interface V1Exchange { 
    /**
     * Gets or sets the exchange ID.
     */
    exchange_id?: string | null;
    /**
     * Gets or sets the website URL of the exchange.
     */
    website?: string | null;
    /**
     * Gets or sets the name of the exchange.
     */
    name?: string | null;
    readonly data_start?: string | null;
    readonly data_end?: string | null;
    /**
     * Gets or sets the start date of quote data.
     */
    data_quote_start?: string | null;
    /**
     * Gets or sets the end date of quote data.
     */
    data_quote_end?: string | null;
    /**
     * Gets or sets the start date of order book data.
     */
    data_orderbook_start?: string | null;
    /**
     * Gets or sets the end date of order book data.
     */
    data_orderbook_end?: string | null;
    /**
     * Gets or sets the start date of trade data.
     */
    data_trade_start?: string | null;
    /**
     * Gets or sets the end date of trade data.
     */
    data_trade_end?: string | null;
    /**
     * Gets or sets the number of trades.
     */
    data_trade_count?: number | null;
    /**
     * Gets or sets the number of symbols.
     */
    data_symbols_count?: number | null;
    /**
     * Gets or sets the USD volume in the last 1 hour.
     */
    volume_1hrs_usd?: number | null;
    /**
     * Gets or sets the USD volume in the last 1 day.
     */
    volume_1day_usd?: number | null;
    /**
     * Gets or sets the USD volume in the last 1 month.
     */
    volume_1mth_usd?: number | null;
    /**
     * Gets or sets the list of metric IDs.
     */
    metric_id?: Array<string> | null;
    /**
     * Gets or sets the list of icons for the exchange.
     */
    readonly icons?: Array<V1Icon> | null;
    /**
     * Rank of the exchange.
     */
    rank?: number;
    /**
     * Status of the integration
     */
    integration_status?: string | null;
}

