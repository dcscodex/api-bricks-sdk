/*
 * dto_filing_item_dto.h
 *
 * 
 */

#ifndef _dto_filing_item_dto_H_
#define _dto_filing_item_dto_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct dto_filing_item_dto_t dto_filing_item_dto_t;




typedef struct dto_filing_item_dto_t {
    char *item_number; // string
    char *item_title; // string
    char *content; // string

    int _library_owned; // Is the library responsible for freeing this object?
} dto_filing_item_dto_t;

__attribute__((deprecated)) dto_filing_item_dto_t *dto_filing_item_dto_create(
    char *item_number,
    char *item_title,
    char *content
);

void dto_filing_item_dto_free(dto_filing_item_dto_t *dto_filing_item_dto);

dto_filing_item_dto_t *dto_filing_item_dto_parseFromJSON(cJSON *dto_filing_item_dtoJSON);

cJSON *dto_filing_item_dto_convertToJSON(dto_filing_item_dto_t *dto_filing_item_dto);

#endif /* _dto_filing_item_dto_H_ */

