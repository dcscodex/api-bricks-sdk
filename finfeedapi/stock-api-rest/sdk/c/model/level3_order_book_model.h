/*
 * level3_order_book_model.h
 *
 * Represents the response DTO for Level-3 order book information
 */

#ifndef _level3_order_book_model_H_
#define _level3_order_book_model_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct level3_order_book_model_t level3_order_book_model_t;

#include "level3_add_order_model.h"
#include "level3_clear_book_model.h"
#include "level3_delete_order_model.h"
#include "level3_executed_order_model.h"
#include "level3_modify_order_model.h"



typedef struct level3_order_book_model_t {
    struct level3_add_order_model_t *add_order; //model
    struct level3_delete_order_model_t *delete_order; //model
    struct level3_modify_order_model_t *modify_order; //model
    struct level3_executed_order_model_t *executed_order; //model
    struct level3_clear_book_model_t *clear_book; //model

    int _library_owned; // Is the library responsible for freeing this object?
} level3_order_book_model_t;

__attribute__((deprecated)) level3_order_book_model_t *level3_order_book_model_create(
    level3_add_order_model_t *add_order,
    level3_delete_order_model_t *delete_order,
    level3_modify_order_model_t *modify_order,
    level3_executed_order_model_t *executed_order,
    level3_clear_book_model_t *clear_book
);

void level3_order_book_model_free(level3_order_book_model_t *level3_order_book_model);

level3_order_book_model_t *level3_order_book_model_parseFromJSON(cJSON *level3_order_book_modelJSON);

cJSON *level3_order_book_model_convertToJSON(level3_order_book_model_t *level3_order_book_model);

#endif /* _level3_order_book_model_H_ */

