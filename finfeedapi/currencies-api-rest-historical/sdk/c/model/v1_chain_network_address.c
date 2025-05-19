#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "v1_chain_network_address.h"



static v1_chain_network_address_t *v1_chain_network_address_create_internal(
    char *chain_id,
    char *network_id,
    char *address
    ) {
    v1_chain_network_address_t *v1_chain_network_address_local_var = malloc(sizeof(v1_chain_network_address_t));
    if (!v1_chain_network_address_local_var) {
        return NULL;
    }
    v1_chain_network_address_local_var->chain_id = chain_id;
    v1_chain_network_address_local_var->network_id = network_id;
    v1_chain_network_address_local_var->address = address;

    v1_chain_network_address_local_var->_library_owned = 1;
    return v1_chain_network_address_local_var;
}

__attribute__((deprecated)) v1_chain_network_address_t *v1_chain_network_address_create(
    char *chain_id,
    char *network_id,
    char *address
    ) {
    return v1_chain_network_address_create_internal (
        chain_id,
        network_id,
        address
        );
}

void v1_chain_network_address_free(v1_chain_network_address_t *v1_chain_network_address) {
    if(NULL == v1_chain_network_address){
        return ;
    }
    if(v1_chain_network_address->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "v1_chain_network_address_free");
        return ;
    }
    listEntry_t *listEntry;
    if (v1_chain_network_address->chain_id) {
        free(v1_chain_network_address->chain_id);
        v1_chain_network_address->chain_id = NULL;
    }
    if (v1_chain_network_address->network_id) {
        free(v1_chain_network_address->network_id);
        v1_chain_network_address->network_id = NULL;
    }
    if (v1_chain_network_address->address) {
        free(v1_chain_network_address->address);
        v1_chain_network_address->address = NULL;
    }
    free(v1_chain_network_address);
}

cJSON *v1_chain_network_address_convertToJSON(v1_chain_network_address_t *v1_chain_network_address) {
    cJSON *item = cJSON_CreateObject();

    // v1_chain_network_address->chain_id
    if(v1_chain_network_address->chain_id) {
    if(cJSON_AddStringToObject(item, "chain_id", v1_chain_network_address->chain_id) == NULL) {
    goto fail; //String
    }
    }


    // v1_chain_network_address->network_id
    if(v1_chain_network_address->network_id) {
    if(cJSON_AddStringToObject(item, "network_id", v1_chain_network_address->network_id) == NULL) {
    goto fail; //String
    }
    }


    // v1_chain_network_address->address
    if(v1_chain_network_address->address) {
    if(cJSON_AddStringToObject(item, "address", v1_chain_network_address->address) == NULL) {
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

v1_chain_network_address_t *v1_chain_network_address_parseFromJSON(cJSON *v1_chain_network_addressJSON){

    v1_chain_network_address_t *v1_chain_network_address_local_var = NULL;

    // v1_chain_network_address->chain_id
    cJSON *chain_id = cJSON_GetObjectItemCaseSensitive(v1_chain_network_addressJSON, "chain_id");
    if (cJSON_IsNull(chain_id)) {
        chain_id = NULL;
    }
    if (chain_id) { 
    if(!cJSON_IsString(chain_id) && !cJSON_IsNull(chain_id))
    {
    goto end; //String
    }
    }

    // v1_chain_network_address->network_id
    cJSON *network_id = cJSON_GetObjectItemCaseSensitive(v1_chain_network_addressJSON, "network_id");
    if (cJSON_IsNull(network_id)) {
        network_id = NULL;
    }
    if (network_id) { 
    if(!cJSON_IsString(network_id) && !cJSON_IsNull(network_id))
    {
    goto end; //String
    }
    }

    // v1_chain_network_address->address
    cJSON *address = cJSON_GetObjectItemCaseSensitive(v1_chain_network_addressJSON, "address");
    if (cJSON_IsNull(address)) {
        address = NULL;
    }
    if (address) { 
    if(!cJSON_IsString(address) && !cJSON_IsNull(address))
    {
    goto end; //String
    }
    }


    v1_chain_network_address_local_var = v1_chain_network_address_create_internal (
        chain_id && !cJSON_IsNull(chain_id) ? strdup(chain_id->valuestring) : NULL,
        network_id && !cJSON_IsNull(network_id) ? strdup(network_id->valuestring) : NULL,
        address && !cJSON_IsNull(address) ? strdup(address->valuestring) : NULL
        );

    return v1_chain_network_address_local_var;
end:
    return NULL;

}
