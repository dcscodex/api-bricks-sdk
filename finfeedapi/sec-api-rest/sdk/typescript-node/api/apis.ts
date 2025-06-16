export * from './contentExtractionApi';
import { ContentExtractionApi } from './contentExtractionApi';
export * from './fileDownloadApi';
import { FileDownloadApi } from './fileDownloadApi';
export * from './filingMetadataApi';
import { FilingMetadataApi } from './filingMetadataApi';
export * from './fullTextSearchApi';
import { FullTextSearchApi } from './fullTextSearchApi';
export * from './xBRLConversionApi';
import { XBRLConversionApi } from './xBRLConversionApi';
import * as http from 'http';

export class HttpError extends Error {
    constructor (public response: http.IncomingMessage, public body: any, public statusCode?: number) {
        super('HTTP request failed');
        this.name = 'HttpError';
    }
}

export { RequestFile } from '../model/models';

export const APIS = [ContentExtractionApi, FileDownloadApi, FilingMetadataApi, FullTextSearchApi, XBRLConversionApi];
