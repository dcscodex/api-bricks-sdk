export * from './exchangeRatesApi';
import { ExchangeRatesApi } from './exchangeRatesApi';
export * from './externalMetricsApi';
import { ExternalMetricsApi } from './externalMetricsApi';
export * from './metadataApi';
import { MetadataApi } from './metadataApi';
export * from './metricsApi';
import { MetricsApi } from './metricsApi';
export * from './ohlcvApi';
import { OhlcvApi } from './ohlcvApi';
export * from './optionsApi';
import { OptionsApi } from './optionsApi';
export * from './orderBookApi';
import { OrderBookApi } from './orderBookApi';
export * from './orderBookL3Api';
import { OrderBookL3Api } from './orderBookL3Api';
export * from './quotesApi';
import { QuotesApi } from './quotesApi';
export * from './tradesApi';
import { TradesApi } from './tradesApi';
import * as http from 'http';

export class HttpError extends Error {
    constructor (public response: http.IncomingMessage, public body: any, public statusCode?: number) {
        super('HTTP request failed');
        this.name = 'HttpError';
    }
}

export { RequestFile } from '../model/models';

export const APIS = [ExchangeRatesApi, ExternalMetricsApi, MetadataApi, MetricsApi, OhlcvApi, OptionsApi, OrderBookApi, OrderBookL3Api, QuotesApi, TradesApi];
