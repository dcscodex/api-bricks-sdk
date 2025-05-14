/*
 * level1_quote_update_model.h
 *
 * Represents the response DTO for quote update information
 */

#ifndef _level1_quote_update_model_H_
#define _level1_quote_update_model_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct level1_quote_update_model_t level1_quote_update_model_t;




typedef struct level1_quote_update_model_t {
    char *symbol; // string
    long timestamp_nanos; //numeric
    char *timestamp; //date time
    int is_symbol_available; //boolean
    int is_pre_post_market_session; //boolean
    int ask_size; //numeric
    double ask_price; //numeric
    double bid_price; //numeric
    int bid_size; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} level1_quote_update_model_t;

__attribute__((deprecated)) level1_quote_update_model_t *level1_quote_update_model_create(
    char *symbol,
    long timestamp_nanos,
    char *timestamp,
    int is_symbol_available,
    int is_pre_post_market_session,
    int ask_size,
    double ask_price,
    double bid_price,
    int bid_size
);

void level1_quote_update_model_free(level1_quote_update_model_t *level1_quote_update_model);

level1_quote_update_model_t *level1_quote_update_model_parseFromJSON(cJSON *level1_quote_update_modelJSON);

cJSON *level1_quote_update_model_convertToJSON(level1_quote_update_model_t *level1_quote_update_model);

#endif /* _level1_quote_update_model_H_ */

