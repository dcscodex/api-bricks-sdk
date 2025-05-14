goog.provide('API.Client.DTO.FilingExtractResultDto');

/**
 * Represents the result of a filing extraction.
 * @record
 */
API.Client.DTOFilingExtractResultDto = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.DTOFilingExtractResultDto.prototype.accessionNumber;

/**
 * @type {!string}
 * @export
 */
API.Client.DTOFilingExtractResultDto.prototype.formType;

/**
 * @type {!Array<!API.Client.DTO.FilingItemDto>}
 * @export
 */
API.Client.DTOFilingExtractResultDto.prototype.items;

