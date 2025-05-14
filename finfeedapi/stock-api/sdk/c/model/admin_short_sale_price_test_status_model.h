/*
 * admin_short_sale_price_test_status_model.h
 *
 * Represents the response DTO for short sale price test status information
 */

#ifndef _admin_short_sale_price_test_status_model_H_
#define _admin_short_sale_price_test_status_model_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct admin_short_sale_price_test_status_model_t admin_short_sale_price_test_status_model_t;




typedef struct admin_short_sale_price_test_status_model_t {
    char *symbol; // string
    long timestamp_nanos; //numeric
    char *timestamp; //date time
    int short_sale_price_test_status; //numeric
    char *short_sale_price_test_status_code; // string
    char *short_sale_price_test_status_text; // string
    int is_short_sale_price_test_not_in_effect; //boolean
    int is_short_sale_price_test_in_effect; //boolean
    int detail; //numeric
    char *detail_code; // string
    char *detail_text; // string
    int is_detail_no_price_test; //boolean
    int is_detail_activated; //boolean
    int is_detail_continued; //boolean
    int is_detail_deactivated; //boolean
    int is_detail_not_available; //boolean

    int _library_owned; // Is the library responsible for freeing this object?
} admin_short_sale_price_test_status_model_t;

__attribute__((deprecated)) admin_short_sale_price_test_status_model_t *admin_short_sale_price_test_status_model_create(
    char *symbol,
    long timestamp_nanos,
    char *timestamp,
    int short_sale_price_test_status,
    char *short_sale_price_test_status_code,
    char *short_sale_price_test_status_text,
    int is_short_sale_price_test_not_in_effect,
    int is_short_sale_price_test_in_effect,
    int detail,
    char *detail_code,
    char *detail_text,
    int is_detail_no_price_test,
    int is_detail_activated,
    int is_detail_continued,
    int is_detail_deactivated,
    int is_detail_not_available
);

void admin_short_sale_price_test_status_model_free(admin_short_sale_price_test_status_model_t *admin_short_sale_price_test_status_model);

admin_short_sale_price_test_status_model_t *admin_short_sale_price_test_status_model_parseFromJSON(cJSON *admin_short_sale_price_test_status_modelJSON);

cJSON *admin_short_sale_price_test_status_model_convertToJSON(admin_short_sale_price_test_status_model_t *admin_short_sale_price_test_status_model);

#endif /* _admin_short_sale_price_test_status_model_H_ */

