/*
 * level2_price_level_update_model.h
 *
 * Represents the response DTO for price level update information
 */

#ifndef _level2_price_level_update_model_H_
#define _level2_price_level_update_model_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct level2_price_level_update_model_t level2_price_level_update_model_t;




typedef struct level2_price_level_update_model_t {
    char *symbol; // string
    long timestamp_nanos; //numeric
    char *timestamp; //date time
    int is_side_buy; //boolean
    int is_event_processing_complete; //boolean
    int size; //numeric
    double price; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} level2_price_level_update_model_t;

__attribute__((deprecated)) level2_price_level_update_model_t *level2_price_level_update_model_create(
    char *symbol,
    long timestamp_nanos,
    char *timestamp,
    int is_side_buy,
    int is_event_processing_complete,
    int size,
    double price
);

void level2_price_level_update_model_free(level2_price_level_update_model_t *level2_price_level_update_model);

level2_price_level_update_model_t *level2_price_level_update_model_parseFromJSON(cJSON *level2_price_level_update_modelJSON);

cJSON *level2_price_level_update_model_convertToJSON(level2_price_level_update_model_t *level2_price_level_update_model);

#endif /* _level2_price_level_update_model_H_ */

