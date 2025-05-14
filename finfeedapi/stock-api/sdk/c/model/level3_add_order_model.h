/*
 * level3_add_order_model.h
 *
 * Represents the response DTO for add order information
 */

#ifndef _level3_add_order_model_H_
#define _level3_add_order_model_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct level3_add_order_model_t level3_add_order_model_t;




typedef struct level3_add_order_model_t {
    char *symbol; // string
    long timestamp_nanos; //numeric
    char *timestamp; //date time
    int is_side_buy; //boolean
    int size; //numeric
    double price; //numeric
    long order_id; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} level3_add_order_model_t;

__attribute__((deprecated)) level3_add_order_model_t *level3_add_order_model_create(
    char *symbol,
    long timestamp_nanos,
    char *timestamp,
    int is_side_buy,
    int size,
    double price,
    long order_id
);

void level3_add_order_model_free(level3_add_order_model_t *level3_add_order_model);

level3_add_order_model_t *level3_add_order_model_parseFromJSON(cJSON *level3_add_order_modelJSON);

cJSON *level3_add_order_model_convertToJSON(level3_add_order_model_t *level3_add_order_model);

#endif /* _level3_add_order_model_H_ */

