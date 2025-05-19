export * from './indexes.service';
import { IndexesService } from './indexes.service';
export * from './metadata.service';
import { MetadataService } from './metadata.service';
export * from './periods.service';
import { PeriodsService } from './periods.service';
export const APIS = [IndexesService, MetadataService, PeriodsService];
