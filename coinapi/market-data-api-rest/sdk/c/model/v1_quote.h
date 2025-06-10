/*
 * v1_quote.h
 *
 * Represents a quote data model.
 */

#ifndef _v1_quote_H_
#define _v1_quote_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct v1_quote_t v1_quote_t;




typedef struct v1_quote_t {
    char *symbol_id; // string
    char *time_exchange; //date time
    char *time_coinapi; //date time
    double ask_price; //numeric
    double ask_size; //numeric
    double bid_price; //numeric
    double bid_size; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} v1_quote_t;

__attribute__((deprecated)) v1_quote_t *v1_quote_create(
    char *symbol_id,
    char *time_exchange,
    char *time_coinapi,
    double ask_price,
    double ask_size,
    double bid_price,
    double bid_size
);

void v1_quote_free(v1_quote_t *v1_quote);

v1_quote_t *v1_quote_parseFromJSON(cJSON *v1_quoteJSON);

cJSON *v1_quote_convertToJSON(v1_quote_t *v1_quote);

#endif /* _v1_quote_H_ */

