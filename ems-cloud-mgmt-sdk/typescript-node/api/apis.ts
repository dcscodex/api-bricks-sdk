export * from './accountApi';
import { AccountApi } from './accountApi';
export * from './certificateApi';
import { CertificateApi } from './certificateApi';
export * from './endpointsApi';
import { EndpointsApi } from './endpointsApi';
export * from './exchangeApi';
import { ExchangeApi } from './exchangeApi';
export * from './locationApi';
import { LocationApi } from './locationApi';
import * as http from 'http';

export class HttpError extends Error {
    constructor (public response: http.IncomingMessage, public body: any, public statusCode?: number) {
        super('HTTP request failed');
        this.name = 'HttpError';
    }
}

export { RequestFile } from '../model/models';

export const APIS = [AccountApi, CertificateApi, EndpointsApi, ExchangeApi, LocationApi];
