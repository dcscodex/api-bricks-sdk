/*
 * dto_filing_extract_result_dto.h
 *
 * Represents the result of a filing extraction.
 */

#ifndef _dto_filing_extract_result_dto_H_
#define _dto_filing_extract_result_dto_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct dto_filing_extract_result_dto_t dto_filing_extract_result_dto_t;

#include "dto_filing_item_dto.h"



typedef struct dto_filing_extract_result_dto_t {
    char *accession_number; // string
    char *form_type; // string
    list_t *items; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} dto_filing_extract_result_dto_t;

__attribute__((deprecated)) dto_filing_extract_result_dto_t *dto_filing_extract_result_dto_create(
    char *accession_number,
    char *form_type,
    list_t *items
);

void dto_filing_extract_result_dto_free(dto_filing_extract_result_dto_t *dto_filing_extract_result_dto);

dto_filing_extract_result_dto_t *dto_filing_extract_result_dto_parseFromJSON(cJSON *dto_filing_extract_result_dtoJSON);

cJSON *dto_filing_extract_result_dto_convertToJSON(dto_filing_extract_result_dto_t *dto_filing_extract_result_dto);

#endif /* _dto_filing_extract_result_dto_H_ */

