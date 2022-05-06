#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "locations.h"



locations_t *locations_create(
    char *location_id,
    char *region_name,
    char *provider_name
    ) {
    locations_t *locations_local_var = malloc(sizeof(locations_t));
    if (!locations_local_var) {
        return NULL;
    }
    locations_local_var->location_id = location_id;
    locations_local_var->region_name = region_name;
    locations_local_var->provider_name = provider_name;

    return locations_local_var;
}


void locations_free(locations_t *locations) {
    if(NULL == locations){
        return ;
    }
    listEntry_t *listEntry;
    if (locations->location_id) {
        free(locations->location_id);
        locations->location_id = NULL;
    }
    if (locations->region_name) {
        free(locations->region_name);
        locations->region_name = NULL;
    }
    if (locations->provider_name) {
        free(locations->provider_name);
        locations->provider_name = NULL;
    }
    free(locations);
}

cJSON *locations_convertToJSON(locations_t *locations) {
    cJSON *item = cJSON_CreateObject();

    // locations->location_id
    if(locations->location_id) { 
    if(cJSON_AddStringToObject(item, "location_id", locations->location_id) == NULL) {
    goto fail; //String
    }
     } 


    // locations->region_name
    if(locations->region_name) { 
    if(cJSON_AddStringToObject(item, "region_name", locations->region_name) == NULL) {
    goto fail; //String
    }
     } 


    // locations->provider_name
    if(locations->provider_name) { 
    if(cJSON_AddStringToObject(item, "provider_name", locations->provider_name) == NULL) {
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

locations_t *locations_parseFromJSON(cJSON *locationsJSON){

    locations_t *locations_local_var = NULL;

    // locations->location_id
    cJSON *location_id = cJSON_GetObjectItemCaseSensitive(locationsJSON, "location_id");
    if (location_id) { 
    if(!cJSON_IsString(location_id))
    {
    goto end; //String
    }
    }

    // locations->region_name
    cJSON *region_name = cJSON_GetObjectItemCaseSensitive(locationsJSON, "region_name");
    if (region_name) { 
    if(!cJSON_IsString(region_name))
    {
    goto end; //String
    }
    }

    // locations->provider_name
    cJSON *provider_name = cJSON_GetObjectItemCaseSensitive(locationsJSON, "provider_name");
    if (provider_name) { 
    if(!cJSON_IsString(provider_name))
    {
    goto end; //String
    }
    }


    locations_local_var = locations_create (
        location_id ? strdup(location_id->valuestring) : NULL,
        region_name ? strdup(region_name->valuestring) : NULL,
        provider_name ? strdup(provider_name->valuestring) : NULL
        );

    return locations_local_var;
end:
    return NULL;

}
