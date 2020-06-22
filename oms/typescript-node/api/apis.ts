export * from './balancesApi';
import { BalancesApi } from './balancesApi';
export * from './ordersApi';
import { OrdersApi } from './ordersApi';
export * from './positionsApi';
import { PositionsApi } from './positionsApi';
import * as fs from 'fs';
import * as http from 'http';

export class HttpError extends Error {
    constructor (public response: http.ClientResponse, public body: any, public statusCode?: number) {
        super('HTTP request failed');
        this.name = 'HttpError';
    }
}

export interface RequestDetailedFile {
    value: Buffer;
    options?: {
        filename?: string;
        contentType?: string;
    }
}

export type RequestFile = string | Buffer | fs.ReadStream | RequestDetailedFile;

export const APIS = [BalancesApi, OrdersApi, PositionsApi];
