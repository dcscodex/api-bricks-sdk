/*
 * v1_order_book_base.h
 *
 * Represents the base model for order book data.
 */

#ifndef _v1_order_book_base_H_
#define _v1_order_book_base_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct v1_order_book_base_t v1_order_book_base_t;

#include "any_type.h"



typedef struct v1_order_book_base_t {
    char *symbol_id; // string
    char *time_exchange; //date time
    char *time_coinapi; //date time
    any_type_t *asks; // custom
    any_type_t *bids; // custom

    int _library_owned; // Is the library responsible for freeing this object?
} v1_order_book_base_t;

__attribute__((deprecated)) v1_order_book_base_t *v1_order_book_base_create(
    char *symbol_id,
    char *time_exchange,
    char *time_coinapi,
    any_type_t *asks,
    any_type_t *bids
);

void v1_order_book_base_free(v1_order_book_base_t *v1_order_book_base);

v1_order_book_base_t *v1_order_book_base_parseFromJSON(cJSON *v1_order_book_baseJSON);

cJSON *v1_order_book_base_convertToJSON(v1_order_book_base_t *v1_order_book_base);

#endif /* _v1_order_book_base_H_ */

