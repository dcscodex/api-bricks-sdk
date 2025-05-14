/*
 * dto_sec_filing_result_dto.h
 *
 * 
 */

#ifndef _dto_sec_filing_result_dto_H_
#define _dto_sec_filing_result_dto_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct dto_sec_filing_result_dto_t dto_sec_filing_result_dto_t;




typedef struct dto_sec_filing_result_dto_t {
    char *accession_number; // string
    char *form_type; // string
    char *filing_date; //date
    char *company_name; // string
    long cik; //numeric
    char *document_filename; // string
    char *document_description; // string
    char *source_file; // string

    int _library_owned; // Is the library responsible for freeing this object?
} dto_sec_filing_result_dto_t;

__attribute__((deprecated)) dto_sec_filing_result_dto_t *dto_sec_filing_result_dto_create(
    char *accession_number,
    char *form_type,
    char *filing_date,
    char *company_name,
    long cik,
    char *document_filename,
    char *document_description,
    char *source_file
);

void dto_sec_filing_result_dto_free(dto_sec_filing_result_dto_t *dto_sec_filing_result_dto);

dto_sec_filing_result_dto_t *dto_sec_filing_result_dto_parseFromJSON(cJSON *dto_sec_filing_result_dtoJSON);

cJSON *dto_sec_filing_result_dto_convertToJSON(dto_sec_filing_result_dto_t *dto_sec_filing_result_dto);

#endif /* _dto_sec_filing_result_dto_H_ */

