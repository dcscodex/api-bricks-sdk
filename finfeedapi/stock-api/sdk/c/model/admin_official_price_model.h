/*
 * admin_official_price_model.h
 *
 * Represents the response DTO for official price information
 */

#ifndef _admin_official_price_model_H_
#define _admin_official_price_model_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct admin_official_price_model_t admin_official_price_model_t;




typedef struct admin_official_price_model_t {
    char *symbol; // string
    long timestamp_nanos; //numeric
    char *timestamp; //date time
    int price_type; //numeric
    char *price_type_code; // string
    char *price_type_text; // string
    int is_price_type_opening; //boolean
    int is_price_type_closing; //boolean
    double official_price; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} admin_official_price_model_t;

__attribute__((deprecated)) admin_official_price_model_t *admin_official_price_model_create(
    char *symbol,
    long timestamp_nanos,
    char *timestamp,
    int price_type,
    char *price_type_code,
    char *price_type_text,
    int is_price_type_opening,
    int is_price_type_closing,
    double official_price
);

void admin_official_price_model_free(admin_official_price_model_t *admin_official_price_model);

admin_official_price_model_t *admin_official_price_model_parseFromJSON(cJSON *admin_official_price_modelJSON);

cJSON *admin_official_price_model_convertToJSON(admin_official_price_model_t *admin_official_price_model);

#endif /* _admin_official_price_model_H_ */

