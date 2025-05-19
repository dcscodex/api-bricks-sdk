/*
 * v1_icon.h
 *
 * Represents an icon.
 */

#ifndef _v1_icon_H_
#define _v1_icon_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct v1_icon_t v1_icon_t;




typedef struct v1_icon_t {
    char *exchange_id; // string
    char *asset_id; // string
    char *url; // string

    int _library_owned; // Is the library responsible for freeing this object?
} v1_icon_t;

__attribute__((deprecated)) v1_icon_t *v1_icon_create(
    char *exchange_id,
    char *asset_id,
    char *url
);

void v1_icon_free(v1_icon_t *v1_icon);

v1_icon_t *v1_icon_parseFromJSON(cJSON *v1_iconJSON);

cJSON *v1_icon_convertToJSON(v1_icon_t *v1_icon);

#endif /* _v1_icon_H_ */

