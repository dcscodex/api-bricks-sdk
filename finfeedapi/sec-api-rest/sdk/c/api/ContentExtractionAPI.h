#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/dto_extractor_type.h"
#include "../model/dto_filing_extract_result_dto.h"
#include "../model/mvc_problem_details.h"
#include "../model/mvc_validation_problem_details.h"

// Enum  for ContentExtractionAPI_v1ExtractorGet
typedef enum  { rest_api_v1ExtractorGet__NULL = 0, rest_api_v1ExtractorGet__text, rest_api_v1ExtractorGet__html } rest_api_v1ExtractorGet_type_e;

// Enum  for ContentExtractionAPI_v1ExtractorItemGet
typedef enum  { rest_api_v1ExtractorItemGet__NULL = 0, rest_api_v1ExtractorItemGet__text, rest_api_v1ExtractorItemGet__html } rest_api_v1ExtractorItemGet_type_e;


// Extract and classify SEC filing content
//
// Retrieves filing content from the EDGAR database and intelligently classifies it according to form type and item categories.    ### Supported Form Types    Form Type | Description  ----------|------------  8-K      | Current report filing  10-K     | Annual report filing  10-Q     | Quarterly report filing    ### Content Classification  - 8-K forms: Content classified by item numbers (e.g., 1.01, 2.01)  - 10-K/10-Q forms: Items categorized by their respective part and item structure    :::note  Both HTML and plain text documents are supported for content extraction.  :::
//
dto_filing_extract_result_dto_t*
ContentExtractionAPI_v1ExtractorGet(apiClient_t *apiClient, char *accession_number, dto_extractor_type_e type);


// Extract specific item content from SEC filing
//
// Retrieves filing content from the EDGAR database and returns only the text content of the specified item number.    ### Item Number Format    Form Type | Item Format Examples  -----------|-------------------  8-K       | 1.01, 2.01, 7.01  10-K      | 1, 2, 3  10-K/10-Q | PartI 1, PartII 2    :::tip  For best results, ensure the item number matches exactly with the filing's structure.  :::
//
char*
ContentExtractionAPI_v1ExtractorItemGet(apiClient_t *apiClient, char *accession_number, char *item_number, dto_extractor_type_e type);


