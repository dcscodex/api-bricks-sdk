/*
 * fin_feed_api_exchange_model.h
 *
 * 
 */

#ifndef _fin_feed_api_exchange_model_H_
#define _fin_feed_api_exchange_model_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct fin_feed_api_exchange_model_t fin_feed_api_exchange_model_t;

#include "any_type.h"



typedef struct fin_feed_api_exchange_model_t {
    char *exchange_id; // string
    char *last_datapoint_date; // string
    char *mic; // string
    char *operating_mic; // string
    char *oprt_sgmt; // string
    char *market_name_institution_description; // string
    char *legal_entity_name; // string
    char *lei; // string
    char *market_category_code; // string
    char *acronym; // string
    char *iso_country_code; // string
    char *city; // string
    char *website; // string
    char *status; // string
    char *creation_date; //date time
    char *last_update_date; //date time
    char *last_validation_date; //date time
    char *expiry_date; //date time
    char *comments; // string

    int _library_owned; // Is the library responsible for freeing this object?
} fin_feed_api_exchange_model_t;

__attribute__((deprecated)) fin_feed_api_exchange_model_t *fin_feed_api_exchange_model_create(
    char *exchange_id,
    char *last_datapoint_date,
    char *mic,
    char *operating_mic,
    char *oprt_sgmt,
    char *market_name_institution_description,
    char *legal_entity_name,
    char *lei,
    char *market_category_code,
    char *acronym,
    char *iso_country_code,
    char *city,
    char *website,
    char *status,
    char *creation_date,
    char *last_update_date,
    char *last_validation_date,
    char *expiry_date,
    char *comments
);

void fin_feed_api_exchange_model_free(fin_feed_api_exchange_model_t *fin_feed_api_exchange_model);

fin_feed_api_exchange_model_t *fin_feed_api_exchange_model_parseFromJSON(cJSON *fin_feed_api_exchange_modelJSON);

cJSON *fin_feed_api_exchange_model_convertToJSON(fin_feed_api_exchange_model_t *fin_feed_api_exchange_model);

#endif /* _fin_feed_api_exchange_model_H_ */

