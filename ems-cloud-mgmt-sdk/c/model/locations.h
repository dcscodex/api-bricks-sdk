/*
 * locations.h
 *
 * 
 */

#ifndef _locations_H_
#define _locations_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct locations_t locations_t;




typedef struct locations_t {
    char *location_id; // string
    char *region_name; // string
    char *provider_name; // string

} locations_t;

locations_t *locations_create(
    char *location_id,
    char *region_name,
    char *provider_name
);

void locations_free(locations_t *locations);

locations_t *locations_parseFromJSON(cJSON *locationsJSON);

cJSON *locations_convertToJSON(locations_t *locations);

#endif /* _locations_H_ */

