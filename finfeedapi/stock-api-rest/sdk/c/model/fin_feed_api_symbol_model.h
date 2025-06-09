/*
 * fin_feed_api_symbol_model.h
 *
 * 
 */

#ifndef _fin_feed_api_symbol_model_H_
#define _fin_feed_api_symbol_model_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct fin_feed_api_symbol_model_t fin_feed_api_symbol_model_t;

#include "any_type.h"



typedef struct fin_feed_api_symbol_model_t {
    char *symbol_id; // string
    char *exchange_id; // string
    char *security_category; // string
    char *name; // string
    char *date; // string
    char *asset_class; // string
    char *cfi_code; // string
    char *cfi_category; // string
    char *cfi_group; // string
    char *cfi_attribute1; // string
    char *cfi_attribute2; // string
    char *cfi_attribute3; // string
    char *cfi_attribute4; // string
    char *cfi_category_desc; // string
    char *cfi_group_desc; // string

    int _library_owned; // Is the library responsible for freeing this object?
} fin_feed_api_symbol_model_t;

__attribute__((deprecated)) fin_feed_api_symbol_model_t *fin_feed_api_symbol_model_create(
    char *symbol_id,
    char *exchange_id,
    char *security_category,
    char *name,
    char *date,
    char *asset_class,
    char *cfi_code,
    char *cfi_category,
    char *cfi_group,
    char *cfi_attribute1,
    char *cfi_attribute2,
    char *cfi_attribute3,
    char *cfi_attribute4,
    char *cfi_category_desc,
    char *cfi_group_desc
);

void fin_feed_api_symbol_model_free(fin_feed_api_symbol_model_t *fin_feed_api_symbol_model);

fin_feed_api_symbol_model_t *fin_feed_api_symbol_model_parseFromJSON(cJSON *fin_feed_api_symbol_modelJSON);

cJSON *fin_feed_api_symbol_model_convertToJSON(fin_feed_api_symbol_model_t *fin_feed_api_symbol_model);

#endif /* _fin_feed_api_symbol_model_H_ */

