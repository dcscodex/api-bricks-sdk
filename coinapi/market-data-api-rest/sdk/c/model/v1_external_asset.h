/*
 * v1_external_asset.h
 *
 * Represents an external asset with description.
 */

#ifndef _v1_external_asset_H_
#define _v1_external_asset_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct v1_external_asset_t v1_external_asset_t;




typedef struct v1_external_asset_t {
    char *asset_id; // string
    char *description; // string
    char *asset_type; // string

    int _library_owned; // Is the library responsible for freeing this object?
} v1_external_asset_t;

__attribute__((deprecated)) v1_external_asset_t *v1_external_asset_create(
    char *asset_id,
    char *description,
    char *asset_type
);

void v1_external_asset_free(v1_external_asset_t *v1_external_asset);

v1_external_asset_t *v1_external_asset_parseFromJSON(cJSON *v1_external_assetJSON);

cJSON *v1_external_asset_convertToJSON(v1_external_asset_t *v1_external_asset);

#endif /* _v1_external_asset_H_ */

