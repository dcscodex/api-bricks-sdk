/*
 * level3_clear_book_model.h
 *
 * Represents the response DTO for clear book information
 */

#ifndef _level3_clear_book_model_H_
#define _level3_clear_book_model_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct level3_clear_book_model_t level3_clear_book_model_t;




typedef struct level3_clear_book_model_t {
    char *symbol; // string
    long timestamp_nanos; //numeric
    char *timestamp; //date time

    int _library_owned; // Is the library responsible for freeing this object?
} level3_clear_book_model_t;

__attribute__((deprecated)) level3_clear_book_model_t *level3_clear_book_model_create(
    char *symbol,
    long timestamp_nanos,
    char *timestamp
);

void level3_clear_book_model_free(level3_clear_book_model_t *level3_clear_book_model);

level3_clear_book_model_t *level3_clear_book_model_parseFromJSON(cJSON *level3_clear_book_modelJSON);

cJSON *level3_clear_book_model_convertToJSON(level3_clear_book_model_t *level3_clear_book_model);

#endif /* _level3_clear_book_model_H_ */

