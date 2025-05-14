/*
 * admin_retail_liquidity_indicator_model.h
 *
 * Represents the response DTO for retail liquidity indicator information
 */

#ifndef _admin_retail_liquidity_indicator_model_H_
#define _admin_retail_liquidity_indicator_model_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct admin_retail_liquidity_indicator_model_t admin_retail_liquidity_indicator_model_t;




typedef struct admin_retail_liquidity_indicator_model_t {
    char *symbol; // string
    long timestamp_nanos; //numeric
    char *timestamp; //date time
    int retail_liquidity_indicator; //numeric
    char *retail_liquidity_indicator_code; // string
    char *retail_liquidity_indicator_text; // string
    int is_retail_indicator_not_applicable; //boolean
    int is_retail_indicator_buy_interest; //boolean
    int is_retail_indicator_sell_interest; //boolean
    int is_retail_indicator_buy_and_sell_interest; //boolean

    int _library_owned; // Is the library responsible for freeing this object?
} admin_retail_liquidity_indicator_model_t;

__attribute__((deprecated)) admin_retail_liquidity_indicator_model_t *admin_retail_liquidity_indicator_model_create(
    char *symbol,
    long timestamp_nanos,
    char *timestamp,
    int retail_liquidity_indicator,
    char *retail_liquidity_indicator_code,
    char *retail_liquidity_indicator_text,
    int is_retail_indicator_not_applicable,
    int is_retail_indicator_buy_interest,
    int is_retail_indicator_sell_interest,
    int is_retail_indicator_buy_and_sell_interest
);

void admin_retail_liquidity_indicator_model_free(admin_retail_liquidity_indicator_model_t *admin_retail_liquidity_indicator_model);

admin_retail_liquidity_indicator_model_t *admin_retail_liquidity_indicator_model_parseFromJSON(cJSON *admin_retail_liquidity_indicator_modelJSON);

cJSON *admin_retail_liquidity_indicator_model_convertToJSON(admin_retail_liquidity_indicator_model_t *admin_retail_liquidity_indicator_model);

#endif /* _admin_retail_liquidity_indicator_model_H_ */

