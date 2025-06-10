/*
 * v1_general_data.h
 *
 * Class representation of general metric data. This class is an XML type with name &#39;general_data&#39; and inherits from the BaseCsvModel class.
 */

#ifndef _v1_general_data_H_
#define _v1_general_data_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct v1_general_data_t v1_general_data_t;




typedef struct v1_general_data_t {
    char *entry_time; //date time
    char *recv_time; //date time
    char *exchange_id; // string
    char *asset_id; // string
    char *symbol_id; // string
    char *metric_id; // string
    double value_decimal; //numeric
    char *value_text; // string
    char *value_time; //date time

    int _library_owned; // Is the library responsible for freeing this object?
} v1_general_data_t;

__attribute__((deprecated)) v1_general_data_t *v1_general_data_create(
    char *entry_time,
    char *recv_time,
    char *exchange_id,
    char *asset_id,
    char *symbol_id,
    char *metric_id,
    double value_decimal,
    char *value_text,
    char *value_time
);

void v1_general_data_free(v1_general_data_t *v1_general_data);

v1_general_data_t *v1_general_data_parseFromJSON(cJSON *v1_general_dataJSON);

cJSON *v1_general_data_convertToJSON(v1_general_data_t *v1_general_data);

#endif /* _v1_general_data_H_ */

