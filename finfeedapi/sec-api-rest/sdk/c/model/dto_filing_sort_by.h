/*
 * dto_filing_sort_by.h
 *
 * Defines sorting options for the filing query.
 */

#ifndef _dto_filing_sort_by_H_
#define _dto_filing_sort_by_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct dto_filing_sort_by_t dto_filing_sort_by_t;


// Enum  for dto_filing_sort_by

typedef enum { finfeedapi_sec_rest_api_dto_filing_sort_by__NULL = 0, finfeedapi_sec_rest_api_dto_filing_sort_by__AccessionNumber, finfeedapi_sec_rest_api_dto_filing_sort_by__FilingDate, finfeedapi_sec_rest_api_dto_filing_sort_by__ReportDate, finfeedapi_sec_rest_api_dto_filing_sort_by__AcceptanceDateTime, finfeedapi_sec_rest_api_dto_filing_sort_by__Size } finfeedapi_sec_rest_api_dto_filing_sort_by__e;

char* dto_filing_sort_by_dto_filing_sort_by_ToString(finfeedapi_sec_rest_api_dto_filing_sort_by__e dto_filing_sort_by);

finfeedapi_sec_rest_api_dto_filing_sort_by__e dto_filing_sort_by_dto_filing_sort_by_FromString(char* dto_filing_sort_by);

cJSON *dto_filing_sort_by_convertToJSON(finfeedapi_sec_rest_api_dto_filing_sort_by__e dto_filing_sort_by);

finfeedapi_sec_rest_api_dto_filing_sort_by__e dto_filing_sort_by_parseFromJSON(cJSON *dto_filing_sort_byJSON);

#endif /* _dto_filing_sort_by_H_ */

