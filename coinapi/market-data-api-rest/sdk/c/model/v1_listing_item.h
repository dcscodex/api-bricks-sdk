/*
 * v1_listing_item.h
 *
 * Represents a listing item.
 */

#ifndef _v1_listing_item_H_
#define _v1_listing_item_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct v1_listing_item_t v1_listing_item_t;




typedef struct v1_listing_item_t {
    char *metric_id; // string
    char *symbol_id; // string
    char *symbol_id_external; // string
    char *exchange_id; // string
    char *asset_id; // string
    char *asset_id_external; // string
    char *chain_id; // string
    char *network_id; // string

    int _library_owned; // Is the library responsible for freeing this object?
} v1_listing_item_t;

__attribute__((deprecated)) v1_listing_item_t *v1_listing_item_create(
    char *metric_id,
    char *symbol_id,
    char *symbol_id_external,
    char *exchange_id,
    char *asset_id,
    char *asset_id_external,
    char *chain_id,
    char *network_id
);

void v1_listing_item_free(v1_listing_item_t *v1_listing_item);

v1_listing_item_t *v1_listing_item_parseFromJSON(cJSON *v1_listing_itemJSON);

cJSON *v1_listing_item_convertToJSON(v1_listing_item_t *v1_listing_item);

#endif /* _v1_listing_item_H_ */

