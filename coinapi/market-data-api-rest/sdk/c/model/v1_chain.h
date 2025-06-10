/*
 * v1_chain.h
 *
 * Represents a blockchain chain.
 */

#ifndef _v1_chain_H_
#define _v1_chain_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct v1_chain_t v1_chain_t;




typedef struct v1_chain_t {
    char *chain_id; // string
    char *name; // string

    int _library_owned; // Is the library responsible for freeing this object?
} v1_chain_t;

__attribute__((deprecated)) v1_chain_t *v1_chain_create(
    char *chain_id,
    char *name
);

void v1_chain_free(v1_chain_t *v1_chain);

v1_chain_t *v1_chain_parseFromJSON(cJSON *v1_chainJSON);

cJSON *v1_chain_convertToJSON(v1_chain_t *v1_chain);

#endif /* _v1_chain_H_ */

