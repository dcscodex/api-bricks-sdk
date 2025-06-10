/*
 * v1_order_book.h
 *
 * Represents an order book with additional information and functionality.
 */

#ifndef _v1_order_book_H_
#define _v1_order_book_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct v1_order_book_t v1_order_book_t;

#include "any_type.h"



typedef struct v1_order_book_t {
    char *symbol_id; // string
    char *time_exchange; //date time
    char *time_coinapi; //date time
    any_type_t *asks; // custom
    any_type_t *bids; // custom

    int _library_owned; // Is the library responsible for freeing this object?
} v1_order_book_t;

__attribute__((deprecated)) v1_order_book_t *v1_order_book_create(
    char *symbol_id,
    char *time_exchange,
    char *time_coinapi,
    any_type_t *asks,
    any_type_t *bids
);

void v1_order_book_free(v1_order_book_t *v1_order_book);

v1_order_book_t *v1_order_book_parseFromJSON(cJSON *v1_order_bookJSON);

cJSON *v1_order_book_convertToJSON(v1_order_book_t *v1_order_book);

#endif /* _v1_order_book_H_ */

