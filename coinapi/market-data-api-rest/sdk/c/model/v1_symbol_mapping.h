/*
 * v1_symbol_mapping.h
 *
 * Represents symbol mapping information for exchange symbols.
 */

#ifndef _v1_symbol_mapping_H_
#define _v1_symbol_mapping_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct v1_symbol_mapping_t v1_symbol_mapping_t;




typedef struct v1_symbol_mapping_t {
    char *symbol_id; // string
    char *symbol_id_exchange; // string
    int coinapi_datainfo_id; //numeric
    char *asset_id_base_exchange; // string
    char *asset_id_quote_exchange; // string
    char *asset_id_base; // string
    char *asset_id_quote; // string
    double price_precision; //numeric
    double size_precision; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} v1_symbol_mapping_t;

__attribute__((deprecated)) v1_symbol_mapping_t *v1_symbol_mapping_create(
    char *symbol_id,
    char *symbol_id_exchange,
    int coinapi_datainfo_id,
    char *asset_id_base_exchange,
    char *asset_id_quote_exchange,
    char *asset_id_base,
    char *asset_id_quote,
    double price_precision,
    double size_precision
);

void v1_symbol_mapping_free(v1_symbol_mapping_t *v1_symbol_mapping);

v1_symbol_mapping_t *v1_symbol_mapping_parseFromJSON(cJSON *v1_symbol_mappingJSON);

cJSON *v1_symbol_mapping_convertToJSON(v1_symbol_mapping_t *v1_symbol_mapping);

#endif /* _v1_symbol_mapping_H_ */

