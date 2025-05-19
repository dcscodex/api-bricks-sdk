export * from './indexesApi';
import { IndexesApi } from './indexesApi';
export * from './metadataApi';
import { MetadataApi } from './metadataApi';
export * from './periodsApi';
import { PeriodsApi } from './periodsApi';
import * as http from 'http';

export class HttpError extends Error {
    constructor (public response: http.IncomingMessage, public body: any, public statusCode?: number) {
        super('HTTP request failed');
        this.name = 'HttpError';
    }
}

export { RequestFile } from '../model/models';

export const APIS = [IndexesApi, MetadataApi, PeriodsApi];
