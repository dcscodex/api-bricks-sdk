/*
 * indexes_index_definition_input_data.h
 *
 * 
 */

#ifndef _indexes_index_definition_input_data_H_
#define _indexes_index_definition_input_data_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct indexes_index_definition_input_data_t indexes_index_definition_input_data_t;




typedef struct indexes_index_definition_input_data_t {
    char *exchange_id; // string
    char *exchange_symbol_id; // string
    char *base_asset_id; // string
    char *quote_asset_id; // string
    char *begin_date; //date time
    char *end_date; //date time
    char *status; // string
    char *status_info; // string
    char *last_modification_time; //date time

    int _library_owned; // Is the library responsible for freeing this object?
} indexes_index_definition_input_data_t;

__attribute__((deprecated)) indexes_index_definition_input_data_t *indexes_index_definition_input_data_create(
    char *exchange_id,
    char *exchange_symbol_id,
    char *base_asset_id,
    char *quote_asset_id,
    char *begin_date,
    char *end_date,
    char *status,
    char *status_info,
    char *last_modification_time
);

void indexes_index_definition_input_data_free(indexes_index_definition_input_data_t *indexes_index_definition_input_data);

indexes_index_definition_input_data_t *indexes_index_definition_input_data_parseFromJSON(cJSON *indexes_index_definition_input_dataJSON);

cJSON *indexes_index_definition_input_data_convertToJSON(indexes_index_definition_input_data_t *indexes_index_definition_input_data);

#endif /* _indexes_index_definition_input_data_H_ */

