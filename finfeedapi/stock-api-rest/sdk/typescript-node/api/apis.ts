export * from './metadataApi';
import { MetadataApi } from './metadataApi';
export * from './nativeIEXApi';
import { NativeIEXApi } from './nativeIEXApi';
export * from './ohlcvApi';
import { OhlcvApi } from './ohlcvApi';
import * as http from 'http';

export class HttpError extends Error {
    constructor (public response: http.IncomingMessage, public body: any, public statusCode?: number) {
        super('HTTP request failed');
        this.name = 'HttpError';
    }
}

export { RequestFile } from '../model/models';

export const APIS = [MetadataApi, NativeIEXApi, OhlcvApi];
