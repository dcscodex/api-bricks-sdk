goog.provide('API.Client.DTO.FilingMetadataDto');

/**
 * Represents the response for a single SEC filing metadata record.  Maps fields from the edgar_submissions table.
 * @record
 */
API.Client.DTOFilingMetadataDto = function() {}

/**
 * @type {!number}
 * @export
 */
API.Client.DTOFilingMetadataDto.prototype.cik;

/**
 * @type {!string}
 * @export
 */
API.Client.DTOFilingMetadataDto.prototype.accessionNumber;

/**
 * @type {!API.Client.date}
 * @export
 */
API.Client.DTOFilingMetadataDto.prototype.filingDate;

/**
 * @type {!API.Client.date}
 * @export
 */
API.Client.DTOFilingMetadataDto.prototype.reportDate;

/**
 * @type {!Date}
 * @export
 */
API.Client.DTOFilingMetadataDto.prototype.acceptanceDateTime;

/**
 * @type {!string}
 * @export
 */
API.Client.DTOFilingMetadataDto.prototype.act;

/**
 * @type {!string}
 * @export
 */
API.Client.DTOFilingMetadataDto.prototype.form;

/**
 * @type {!string}
 * @export
 */
API.Client.DTOFilingMetadataDto.prototype.fileNumber;

/**
 * @type {!string}
 * @export
 */
API.Client.DTOFilingMetadataDto.prototype.filmNumber;

/**
 * @type {!string}
 * @export
 */
API.Client.DTOFilingMetadataDto.prototype.items;

/**
 * @type {!string}
 * @export
 */
API.Client.DTOFilingMetadataDto.prototype.coreType;

/**
 * @type {!number}
 * @export
 */
API.Client.DTOFilingMetadataDto.prototype.size;

/**
 * @type {!boolean}
 * @export
 */
API.Client.DTOFilingMetadataDto.prototype.isXbrl;

/**
 * @type {!boolean}
 * @export
 */
API.Client.DTOFilingMetadataDto.prototype.isInlineXbrl;

/**
 * @type {!string}
 * @export
 */
API.Client.DTOFilingMetadataDto.prototype.primaryDocument;

/**
 * @type {!string}
 * @export
 */
API.Client.DTOFilingMetadataDto.prototype.primaryDocDescription;

/**
 * @type {!string}
 * @export
 */
API.Client.DTOFilingMetadataDto.prototype.sourceFile;

