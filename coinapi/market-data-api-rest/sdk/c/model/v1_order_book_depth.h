/*
 * v1_order_book_depth.h
 *
 * Represents the depth of an order book.
 */

#ifndef _v1_order_book_depth_H_
#define _v1_order_book_depth_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct v1_order_book_depth_t v1_order_book_depth_t;




typedef struct v1_order_book_depth_t {
    char *symbol_id; // string
    char *time_exchange; //date time
    char *time_coinapi; //date time
    long ask_levels; //numeric
    long bid_levels; //numeric
    double ask_depth; //numeric
    double bid_depth; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} v1_order_book_depth_t;

__attribute__((deprecated)) v1_order_book_depth_t *v1_order_book_depth_create(
    char *symbol_id,
    char *time_exchange,
    char *time_coinapi,
    long ask_levels,
    long bid_levels,
    double ask_depth,
    double bid_depth
);

void v1_order_book_depth_free(v1_order_book_depth_t *v1_order_book_depth);

v1_order_book_depth_t *v1_order_book_depth_parseFromJSON(cJSON *v1_order_book_depthJSON);

cJSON *v1_order_book_depth_convertToJSON(v1_order_book_depth_t *v1_order_book_depth);

#endif /* _v1_order_book_depth_H_ */

