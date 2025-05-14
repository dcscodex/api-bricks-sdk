goog.provide('API.Client.DTO.SecFilingResultDto');

/**
 * @record
 */
API.Client.DTOSecFilingResultDto = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.DTOSecFilingResultDto.prototype.accessionNumber;

/**
 * @type {!string}
 * @export
 */
API.Client.DTOSecFilingResultDto.prototype.formType;

/**
 * @type {!API.Client.date}
 * @export
 */
API.Client.DTOSecFilingResultDto.prototype.filingDate;

/**
 * @type {!string}
 * @export
 */
API.Client.DTOSecFilingResultDto.prototype.companyName;

/**
 * @type {!number}
 * @export
 */
API.Client.DTOSecFilingResultDto.prototype.cik;

/**
 * @type {!string}
 * @export
 */
API.Client.DTOSecFilingResultDto.prototype.documentFilename;

/**
 * @type {!string}
 * @export
 */
API.Client.DTOSecFilingResultDto.prototype.documentDescription;

/**
 * @type {!string}
 * @export
 */
API.Client.DTOSecFilingResultDto.prototype.sourceFile;

