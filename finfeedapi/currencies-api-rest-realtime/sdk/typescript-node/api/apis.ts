export * from './exchangeRatesApi';
import { ExchangeRatesApi } from './exchangeRatesApi';
export * from './metadataApi';
import { MetadataApi } from './metadataApi';
import * as http from 'http';

export class HttpError extends Error {
    constructor (public response: http.IncomingMessage, public body: any, public statusCode?: number) {
        super('HTTP request failed');
        this.name = 'HttpError';
    }
}

export { RequestFile } from '../model/models';

export const APIS = [ExchangeRatesApi, MetadataApi];
