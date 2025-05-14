/*
 * dto_filing_metadata_dto.h
 *
 * Represents the response for a single SEC filing metadata record.  Maps fields from the edgar_submissions table.
 */

#ifndef _dto_filing_metadata_dto_H_
#define _dto_filing_metadata_dto_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct dto_filing_metadata_dto_t dto_filing_metadata_dto_t;




typedef struct dto_filing_metadata_dto_t {
    long cik; //numeric
    char *accession_number; // string
    char *filing_date; //date
    char *report_date; //date
    char *acceptance_date_time; //date time
    char *act; // string
    char *form; // string
    char *file_number; // string
    char *film_number; // string
    char *items; // string
    char *core_type; // string
    int size; //numeric
    int is_xbrl; //boolean
    int is_inline_xbrl; //boolean
    char *primary_document; // string
    char *primary_doc_description; // string
    char *source_file; // string

    int _library_owned; // Is the library responsible for freeing this object?
} dto_filing_metadata_dto_t;

__attribute__((deprecated)) dto_filing_metadata_dto_t *dto_filing_metadata_dto_create(
    long cik,
    char *accession_number,
    char *filing_date,
    char *report_date,
    char *acceptance_date_time,
    char *act,
    char *form,
    char *file_number,
    char *film_number,
    char *items,
    char *core_type,
    int size,
    int is_xbrl,
    int is_inline_xbrl,
    char *primary_document,
    char *primary_doc_description,
    char *source_file
);

void dto_filing_metadata_dto_free(dto_filing_metadata_dto_t *dto_filing_metadata_dto);

dto_filing_metadata_dto_t *dto_filing_metadata_dto_parseFromJSON(cJSON *dto_filing_metadata_dtoJSON);

cJSON *dto_filing_metadata_dto_convertToJSON(dto_filing_metadata_dto_t *dto_filing_metadata_dto);

#endif /* _dto_filing_metadata_dto_H_ */

