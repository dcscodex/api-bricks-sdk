/*
 * v1_chain_network_address.h
 *
 * Contains information about assets&#39; chain network addresses
 */

#ifndef _v1_chain_network_address_H_
#define _v1_chain_network_address_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct v1_chain_network_address_t v1_chain_network_address_t;




typedef struct v1_chain_network_address_t {
    char *chain_id; // string
    char *network_id; // string
    char *address; // string

    int _library_owned; // Is the library responsible for freeing this object?
} v1_chain_network_address_t;

__attribute__((deprecated)) v1_chain_network_address_t *v1_chain_network_address_create(
    char *chain_id,
    char *network_id,
    char *address
);

void v1_chain_network_address_free(v1_chain_network_address_t *v1_chain_network_address);

v1_chain_network_address_t *v1_chain_network_address_parseFromJSON(cJSON *v1_chain_network_addressJSON);

cJSON *v1_chain_network_address_convertToJSON(v1_chain_network_address_t *v1_chain_network_address);

#endif /* _v1_chain_network_address_H_ */

