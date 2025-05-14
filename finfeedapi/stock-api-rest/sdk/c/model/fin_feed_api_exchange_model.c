#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "fin_feed_api_exchange_model.h"



static fin_feed_api_exchange_model_t *fin_feed_api_exchange_model_create_internal(
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
    ) {
    fin_feed_api_exchange_model_t *fin_feed_api_exchange_model_local_var = malloc(sizeof(fin_feed_api_exchange_model_t));
    if (!fin_feed_api_exchange_model_local_var) {
        return NULL;
    }
    fin_feed_api_exchange_model_local_var->exchange_id = exchange_id;
    fin_feed_api_exchange_model_local_var->last_datapoint_date = last_datapoint_date;
    fin_feed_api_exchange_model_local_var->mic = mic;
    fin_feed_api_exchange_model_local_var->operating_mic = operating_mic;
    fin_feed_api_exchange_model_local_var->oprt_sgmt = oprt_sgmt;
    fin_feed_api_exchange_model_local_var->market_name_institution_description = market_name_institution_description;
    fin_feed_api_exchange_model_local_var->legal_entity_name = legal_entity_name;
    fin_feed_api_exchange_model_local_var->lei = lei;
    fin_feed_api_exchange_model_local_var->market_category_code = market_category_code;
    fin_feed_api_exchange_model_local_var->acronym = acronym;
    fin_feed_api_exchange_model_local_var->iso_country_code = iso_country_code;
    fin_feed_api_exchange_model_local_var->city = city;
    fin_feed_api_exchange_model_local_var->website = website;
    fin_feed_api_exchange_model_local_var->status = status;
    fin_feed_api_exchange_model_local_var->creation_date = creation_date;
    fin_feed_api_exchange_model_local_var->last_update_date = last_update_date;
    fin_feed_api_exchange_model_local_var->last_validation_date = last_validation_date;
    fin_feed_api_exchange_model_local_var->expiry_date = expiry_date;
    fin_feed_api_exchange_model_local_var->comments = comments;

    fin_feed_api_exchange_model_local_var->_library_owned = 1;
    return fin_feed_api_exchange_model_local_var;
}

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
    ) {
    return fin_feed_api_exchange_model_create_internal (
        exchange_id,
        last_datapoint_date,
        mic,
        operating_mic,
        oprt_sgmt,
        market_name_institution_description,
        legal_entity_name,
        lei,
        market_category_code,
        acronym,
        iso_country_code,
        city,
        website,
        status,
        creation_date,
        last_update_date,
        last_validation_date,
        expiry_date,
        comments
        );
}

void fin_feed_api_exchange_model_free(fin_feed_api_exchange_model_t *fin_feed_api_exchange_model) {
    if(NULL == fin_feed_api_exchange_model){
        return ;
    }
    if(fin_feed_api_exchange_model->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "fin_feed_api_exchange_model_free");
        return ;
    }
    listEntry_t *listEntry;
    if (fin_feed_api_exchange_model->exchange_id) {
        free(fin_feed_api_exchange_model->exchange_id);
        fin_feed_api_exchange_model->exchange_id = NULL;
    }
    if (fin_feed_api_exchange_model->last_datapoint_date) {
        free(fin_feed_api_exchange_model->last_datapoint_date);
        fin_feed_api_exchange_model->last_datapoint_date = NULL;
    }
    if (fin_feed_api_exchange_model->mic) {
        free(fin_feed_api_exchange_model->mic);
        fin_feed_api_exchange_model->mic = NULL;
    }
    if (fin_feed_api_exchange_model->operating_mic) {
        free(fin_feed_api_exchange_model->operating_mic);
        fin_feed_api_exchange_model->operating_mic = NULL;
    }
    if (fin_feed_api_exchange_model->oprt_sgmt) {
        free(fin_feed_api_exchange_model->oprt_sgmt);
        fin_feed_api_exchange_model->oprt_sgmt = NULL;
    }
    if (fin_feed_api_exchange_model->market_name_institution_description) {
        free(fin_feed_api_exchange_model->market_name_institution_description);
        fin_feed_api_exchange_model->market_name_institution_description = NULL;
    }
    if (fin_feed_api_exchange_model->legal_entity_name) {
        free(fin_feed_api_exchange_model->legal_entity_name);
        fin_feed_api_exchange_model->legal_entity_name = NULL;
    }
    if (fin_feed_api_exchange_model->lei) {
        free(fin_feed_api_exchange_model->lei);
        fin_feed_api_exchange_model->lei = NULL;
    }
    if (fin_feed_api_exchange_model->market_category_code) {
        free(fin_feed_api_exchange_model->market_category_code);
        fin_feed_api_exchange_model->market_category_code = NULL;
    }
    if (fin_feed_api_exchange_model->acronym) {
        free(fin_feed_api_exchange_model->acronym);
        fin_feed_api_exchange_model->acronym = NULL;
    }
    if (fin_feed_api_exchange_model->iso_country_code) {
        free(fin_feed_api_exchange_model->iso_country_code);
        fin_feed_api_exchange_model->iso_country_code = NULL;
    }
    if (fin_feed_api_exchange_model->city) {
        free(fin_feed_api_exchange_model->city);
        fin_feed_api_exchange_model->city = NULL;
    }
    if (fin_feed_api_exchange_model->website) {
        free(fin_feed_api_exchange_model->website);
        fin_feed_api_exchange_model->website = NULL;
    }
    if (fin_feed_api_exchange_model->status) {
        free(fin_feed_api_exchange_model->status);
        fin_feed_api_exchange_model->status = NULL;
    }
    if (fin_feed_api_exchange_model->creation_date) {
        free(fin_feed_api_exchange_model->creation_date);
        fin_feed_api_exchange_model->creation_date = NULL;
    }
    if (fin_feed_api_exchange_model->last_update_date) {
        free(fin_feed_api_exchange_model->last_update_date);
        fin_feed_api_exchange_model->last_update_date = NULL;
    }
    if (fin_feed_api_exchange_model->last_validation_date) {
        free(fin_feed_api_exchange_model->last_validation_date);
        fin_feed_api_exchange_model->last_validation_date = NULL;
    }
    if (fin_feed_api_exchange_model->expiry_date) {
        free(fin_feed_api_exchange_model->expiry_date);
        fin_feed_api_exchange_model->expiry_date = NULL;
    }
    if (fin_feed_api_exchange_model->comments) {
        free(fin_feed_api_exchange_model->comments);
        fin_feed_api_exchange_model->comments = NULL;
    }
    free(fin_feed_api_exchange_model);
}

cJSON *fin_feed_api_exchange_model_convertToJSON(fin_feed_api_exchange_model_t *fin_feed_api_exchange_model) {
    cJSON *item = cJSON_CreateObject();

    // fin_feed_api_exchange_model->exchange_id
    if(fin_feed_api_exchange_model->exchange_id) {
    if(cJSON_AddStringToObject(item, "exchange_id", fin_feed_api_exchange_model->exchange_id) == NULL) {
    goto fail; //String
    }
    }


    // fin_feed_api_exchange_model->last_datapoint_date
    if(fin_feed_api_exchange_model->last_datapoint_date) {
    if(cJSON_AddStringToObject(item, "last_datapoint_date", fin_feed_api_exchange_model->last_datapoint_date) == NULL) {
    goto fail; //String
    }
    }


    // fin_feed_api_exchange_model->mic
    if(fin_feed_api_exchange_model->mic) {
    if(cJSON_AddStringToObject(item, "mic", fin_feed_api_exchange_model->mic) == NULL) {
    goto fail; //String
    }
    }


    // fin_feed_api_exchange_model->operating_mic
    if(fin_feed_api_exchange_model->operating_mic) {
    if(cJSON_AddStringToObject(item, "operating_mic", fin_feed_api_exchange_model->operating_mic) == NULL) {
    goto fail; //String
    }
    }


    // fin_feed_api_exchange_model->oprt_sgmt
    if(fin_feed_api_exchange_model->oprt_sgmt) {
    if(cJSON_AddStringToObject(item, "oprt_sgmt", fin_feed_api_exchange_model->oprt_sgmt) == NULL) {
    goto fail; //String
    }
    }


    // fin_feed_api_exchange_model->market_name_institution_description
    if(fin_feed_api_exchange_model->market_name_institution_description) {
    if(cJSON_AddStringToObject(item, "market_name_institution_description", fin_feed_api_exchange_model->market_name_institution_description) == NULL) {
    goto fail; //String
    }
    }


    // fin_feed_api_exchange_model->legal_entity_name
    if(fin_feed_api_exchange_model->legal_entity_name) {
    if(cJSON_AddStringToObject(item, "legal_entity_name", fin_feed_api_exchange_model->legal_entity_name) == NULL) {
    goto fail; //String
    }
    }


    // fin_feed_api_exchange_model->lei
    if(fin_feed_api_exchange_model->lei) {
    if(cJSON_AddStringToObject(item, "lei", fin_feed_api_exchange_model->lei) == NULL) {
    goto fail; //String
    }
    }


    // fin_feed_api_exchange_model->market_category_code
    if(fin_feed_api_exchange_model->market_category_code) {
    if(cJSON_AddStringToObject(item, "market_category_code", fin_feed_api_exchange_model->market_category_code) == NULL) {
    goto fail; //String
    }
    }


    // fin_feed_api_exchange_model->acronym
    if(fin_feed_api_exchange_model->acronym) {
    if(cJSON_AddStringToObject(item, "acronym", fin_feed_api_exchange_model->acronym) == NULL) {
    goto fail; //String
    }
    }


    // fin_feed_api_exchange_model->iso_country_code
    if(fin_feed_api_exchange_model->iso_country_code) {
    if(cJSON_AddStringToObject(item, "iso_country_code", fin_feed_api_exchange_model->iso_country_code) == NULL) {
    goto fail; //String
    }
    }


    // fin_feed_api_exchange_model->city
    if(fin_feed_api_exchange_model->city) {
    if(cJSON_AddStringToObject(item, "city", fin_feed_api_exchange_model->city) == NULL) {
    goto fail; //String
    }
    }


    // fin_feed_api_exchange_model->website
    if(fin_feed_api_exchange_model->website) {
    if(cJSON_AddStringToObject(item, "website", fin_feed_api_exchange_model->website) == NULL) {
    goto fail; //String
    }
    }


    // fin_feed_api_exchange_model->status
    if(fin_feed_api_exchange_model->status) {
    if(cJSON_AddStringToObject(item, "status", fin_feed_api_exchange_model->status) == NULL) {
    goto fail; //String
    }
    }


    // fin_feed_api_exchange_model->creation_date
    if(fin_feed_api_exchange_model->creation_date) {
    if(cJSON_AddStringToObject(item, "creation_date", fin_feed_api_exchange_model->creation_date) == NULL) {
    goto fail; //Date-Time
    }
    }


    // fin_feed_api_exchange_model->last_update_date
    if(fin_feed_api_exchange_model->last_update_date) {
    if(cJSON_AddStringToObject(item, "last_update_date", fin_feed_api_exchange_model->last_update_date) == NULL) {
    goto fail; //Date-Time
    }
    }


    // fin_feed_api_exchange_model->last_validation_date
    if(fin_feed_api_exchange_model->last_validation_date) {
    if(cJSON_AddStringToObject(item, "last_validation_date", fin_feed_api_exchange_model->last_validation_date) == NULL) {
    goto fail; //Date-Time
    }
    }


    // fin_feed_api_exchange_model->expiry_date
    if(fin_feed_api_exchange_model->expiry_date) {
    if(cJSON_AddStringToObject(item, "expiry_date", fin_feed_api_exchange_model->expiry_date) == NULL) {
    goto fail; //Date-Time
    }
    }


    // fin_feed_api_exchange_model->comments
    if(fin_feed_api_exchange_model->comments) {
    if(cJSON_AddStringToObject(item, "comments", fin_feed_api_exchange_model->comments) == NULL) {
    goto fail; //String
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

fin_feed_api_exchange_model_t *fin_feed_api_exchange_model_parseFromJSON(cJSON *fin_feed_api_exchange_modelJSON){

    fin_feed_api_exchange_model_t *fin_feed_api_exchange_model_local_var = NULL;

    // fin_feed_api_exchange_model->exchange_id
    cJSON *exchange_id = cJSON_GetObjectItemCaseSensitive(fin_feed_api_exchange_modelJSON, "exchange_id");
    if (cJSON_IsNull(exchange_id)) {
        exchange_id = NULL;
    }
    if (exchange_id) { 
    if(!cJSON_IsString(exchange_id) && !cJSON_IsNull(exchange_id))
    {
    goto end; //String
    }
    }

    // fin_feed_api_exchange_model->last_datapoint_date
    cJSON *last_datapoint_date = cJSON_GetObjectItemCaseSensitive(fin_feed_api_exchange_modelJSON, "last_datapoint_date");
    if (cJSON_IsNull(last_datapoint_date)) {
        last_datapoint_date = NULL;
    }
    if (last_datapoint_date) { 
    if(!cJSON_IsString(last_datapoint_date) && !cJSON_IsNull(last_datapoint_date))
    {
    goto end; //String
    }
    }

    // fin_feed_api_exchange_model->mic
    cJSON *mic = cJSON_GetObjectItemCaseSensitive(fin_feed_api_exchange_modelJSON, "mic");
    if (cJSON_IsNull(mic)) {
        mic = NULL;
    }
    if (mic) { 
    if(!cJSON_IsString(mic) && !cJSON_IsNull(mic))
    {
    goto end; //String
    }
    }

    // fin_feed_api_exchange_model->operating_mic
    cJSON *operating_mic = cJSON_GetObjectItemCaseSensitive(fin_feed_api_exchange_modelJSON, "operating_mic");
    if (cJSON_IsNull(operating_mic)) {
        operating_mic = NULL;
    }
    if (operating_mic) { 
    if(!cJSON_IsString(operating_mic) && !cJSON_IsNull(operating_mic))
    {
    goto end; //String
    }
    }

    // fin_feed_api_exchange_model->oprt_sgmt
    cJSON *oprt_sgmt = cJSON_GetObjectItemCaseSensitive(fin_feed_api_exchange_modelJSON, "oprt_sgmt");
    if (cJSON_IsNull(oprt_sgmt)) {
        oprt_sgmt = NULL;
    }
    if (oprt_sgmt) { 
    if(!cJSON_IsString(oprt_sgmt) && !cJSON_IsNull(oprt_sgmt))
    {
    goto end; //String
    }
    }

    // fin_feed_api_exchange_model->market_name_institution_description
    cJSON *market_name_institution_description = cJSON_GetObjectItemCaseSensitive(fin_feed_api_exchange_modelJSON, "market_name_institution_description");
    if (cJSON_IsNull(market_name_institution_description)) {
        market_name_institution_description = NULL;
    }
    if (market_name_institution_description) { 
    if(!cJSON_IsString(market_name_institution_description) && !cJSON_IsNull(market_name_institution_description))
    {
    goto end; //String
    }
    }

    // fin_feed_api_exchange_model->legal_entity_name
    cJSON *legal_entity_name = cJSON_GetObjectItemCaseSensitive(fin_feed_api_exchange_modelJSON, "legal_entity_name");
    if (cJSON_IsNull(legal_entity_name)) {
        legal_entity_name = NULL;
    }
    if (legal_entity_name) { 
    if(!cJSON_IsString(legal_entity_name) && !cJSON_IsNull(legal_entity_name))
    {
    goto end; //String
    }
    }

    // fin_feed_api_exchange_model->lei
    cJSON *lei = cJSON_GetObjectItemCaseSensitive(fin_feed_api_exchange_modelJSON, "lei");
    if (cJSON_IsNull(lei)) {
        lei = NULL;
    }
    if (lei) { 
    if(!cJSON_IsString(lei) && !cJSON_IsNull(lei))
    {
    goto end; //String
    }
    }

    // fin_feed_api_exchange_model->market_category_code
    cJSON *market_category_code = cJSON_GetObjectItemCaseSensitive(fin_feed_api_exchange_modelJSON, "market_category_code");
    if (cJSON_IsNull(market_category_code)) {
        market_category_code = NULL;
    }
    if (market_category_code) { 
    if(!cJSON_IsString(market_category_code) && !cJSON_IsNull(market_category_code))
    {
    goto end; //String
    }
    }

    // fin_feed_api_exchange_model->acronym
    cJSON *acronym = cJSON_GetObjectItemCaseSensitive(fin_feed_api_exchange_modelJSON, "acronym");
    if (cJSON_IsNull(acronym)) {
        acronym = NULL;
    }
    if (acronym) { 
    if(!cJSON_IsString(acronym) && !cJSON_IsNull(acronym))
    {
    goto end; //String
    }
    }

    // fin_feed_api_exchange_model->iso_country_code
    cJSON *iso_country_code = cJSON_GetObjectItemCaseSensitive(fin_feed_api_exchange_modelJSON, "iso_country_code");
    if (cJSON_IsNull(iso_country_code)) {
        iso_country_code = NULL;
    }
    if (iso_country_code) { 
    if(!cJSON_IsString(iso_country_code) && !cJSON_IsNull(iso_country_code))
    {
    goto end; //String
    }
    }

    // fin_feed_api_exchange_model->city
    cJSON *city = cJSON_GetObjectItemCaseSensitive(fin_feed_api_exchange_modelJSON, "city");
    if (cJSON_IsNull(city)) {
        city = NULL;
    }
    if (city) { 
    if(!cJSON_IsString(city) && !cJSON_IsNull(city))
    {
    goto end; //String
    }
    }

    // fin_feed_api_exchange_model->website
    cJSON *website = cJSON_GetObjectItemCaseSensitive(fin_feed_api_exchange_modelJSON, "website");
    if (cJSON_IsNull(website)) {
        website = NULL;
    }
    if (website) { 
    if(!cJSON_IsString(website) && !cJSON_IsNull(website))
    {
    goto end; //String
    }
    }

    // fin_feed_api_exchange_model->status
    cJSON *status = cJSON_GetObjectItemCaseSensitive(fin_feed_api_exchange_modelJSON, "status");
    if (cJSON_IsNull(status)) {
        status = NULL;
    }
    if (status) { 
    if(!cJSON_IsString(status) && !cJSON_IsNull(status))
    {
    goto end; //String
    }
    }

    // fin_feed_api_exchange_model->creation_date
    cJSON *creation_date = cJSON_GetObjectItemCaseSensitive(fin_feed_api_exchange_modelJSON, "creation_date");
    if (cJSON_IsNull(creation_date)) {
        creation_date = NULL;
    }
    if (creation_date) { 
    if(!cJSON_IsString(creation_date) && !cJSON_IsNull(creation_date))
    {
    goto end; //DateTime
    }
    }

    // fin_feed_api_exchange_model->last_update_date
    cJSON *last_update_date = cJSON_GetObjectItemCaseSensitive(fin_feed_api_exchange_modelJSON, "last_update_date");
    if (cJSON_IsNull(last_update_date)) {
        last_update_date = NULL;
    }
    if (last_update_date) { 
    if(!cJSON_IsString(last_update_date) && !cJSON_IsNull(last_update_date))
    {
    goto end; //DateTime
    }
    }

    // fin_feed_api_exchange_model->last_validation_date
    cJSON *last_validation_date = cJSON_GetObjectItemCaseSensitive(fin_feed_api_exchange_modelJSON, "last_validation_date");
    if (cJSON_IsNull(last_validation_date)) {
        last_validation_date = NULL;
    }
    if (last_validation_date) { 
    if(!cJSON_IsString(last_validation_date) && !cJSON_IsNull(last_validation_date))
    {
    goto end; //DateTime
    }
    }

    // fin_feed_api_exchange_model->expiry_date
    cJSON *expiry_date = cJSON_GetObjectItemCaseSensitive(fin_feed_api_exchange_modelJSON, "expiry_date");
    if (cJSON_IsNull(expiry_date)) {
        expiry_date = NULL;
    }
    if (expiry_date) { 
    if(!cJSON_IsString(expiry_date) && !cJSON_IsNull(expiry_date))
    {
    goto end; //DateTime
    }
    }

    // fin_feed_api_exchange_model->comments
    cJSON *comments = cJSON_GetObjectItemCaseSensitive(fin_feed_api_exchange_modelJSON, "comments");
    if (cJSON_IsNull(comments)) {
        comments = NULL;
    }
    if (comments) { 
    if(!cJSON_IsString(comments) && !cJSON_IsNull(comments))
    {
    goto end; //String
    }
    }


    fin_feed_api_exchange_model_local_var = fin_feed_api_exchange_model_create_internal (
        exchange_id && !cJSON_IsNull(exchange_id) ? strdup(exchange_id->valuestring) : NULL,
        last_datapoint_date && !cJSON_IsNull(last_datapoint_date) ? strdup(last_datapoint_date->valuestring) : NULL,
        mic && !cJSON_IsNull(mic) ? strdup(mic->valuestring) : NULL,
        operating_mic && !cJSON_IsNull(operating_mic) ? strdup(operating_mic->valuestring) : NULL,
        oprt_sgmt && !cJSON_IsNull(oprt_sgmt) ? strdup(oprt_sgmt->valuestring) : NULL,
        market_name_institution_description && !cJSON_IsNull(market_name_institution_description) ? strdup(market_name_institution_description->valuestring) : NULL,
        legal_entity_name && !cJSON_IsNull(legal_entity_name) ? strdup(legal_entity_name->valuestring) : NULL,
        lei && !cJSON_IsNull(lei) ? strdup(lei->valuestring) : NULL,
        market_category_code && !cJSON_IsNull(market_category_code) ? strdup(market_category_code->valuestring) : NULL,
        acronym && !cJSON_IsNull(acronym) ? strdup(acronym->valuestring) : NULL,
        iso_country_code && !cJSON_IsNull(iso_country_code) ? strdup(iso_country_code->valuestring) : NULL,
        city && !cJSON_IsNull(city) ? strdup(city->valuestring) : NULL,
        website && !cJSON_IsNull(website) ? strdup(website->valuestring) : NULL,
        status && !cJSON_IsNull(status) ? strdup(status->valuestring) : NULL,
        creation_date && !cJSON_IsNull(creation_date) ? strdup(creation_date->valuestring) : NULL,
        last_update_date && !cJSON_IsNull(last_update_date) ? strdup(last_update_date->valuestring) : NULL,
        last_validation_date && !cJSON_IsNull(last_validation_date) ? strdup(last_validation_date->valuestring) : NULL,
        expiry_date && !cJSON_IsNull(expiry_date) ? strdup(expiry_date->valuestring) : NULL,
        comments && !cJSON_IsNull(comments) ? strdup(comments->valuestring) : NULL
        );

    return fin_feed_api_exchange_model_local_var;
end:
    return NULL;

}
