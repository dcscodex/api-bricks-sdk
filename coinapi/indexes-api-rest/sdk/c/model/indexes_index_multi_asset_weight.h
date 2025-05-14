/*
 * indexes_index_multi_asset_weight.h
 *
 * 
 */

#ifndef _indexes_index_multi_asset_weight_H_
#define _indexes_index_multi_asset_weight_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct indexes_index_multi_asset_weight_t indexes_index_multi_asset_weight_t;




typedef struct indexes_index_multi_asset_weight_t {
    char *index_id; // string
    char *asset_id; // string
    double weight; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} indexes_index_multi_asset_weight_t;

__attribute__((deprecated)) indexes_index_multi_asset_weight_t *indexes_index_multi_asset_weight_create(
    char *index_id,
    char *asset_id,
    double weight
);

void indexes_index_multi_asset_weight_free(indexes_index_multi_asset_weight_t *indexes_index_multi_asset_weight);

indexes_index_multi_asset_weight_t *indexes_index_multi_asset_weight_parseFromJSON(cJSON *indexes_index_multi_asset_weightJSON);

cJSON *indexes_index_multi_asset_weight_convertToJSON(indexes_index_multi_asset_weight_t *indexes_index_multi_asset_weight);

#endif /* _indexes_index_multi_asset_weight_H_ */

