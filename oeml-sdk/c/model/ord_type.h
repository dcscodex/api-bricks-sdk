/*
 * ord_type.h
 *
 * Order types are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-params-type\&quot;&gt;OEML / Starter Guide / Order parameters / Order type&lt;/a&gt; 
 */

#ifndef _ord_type_H_
#define _ord_type_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct ord_type_t ord_type_t;


// Enum  for ord_type

typedef enum { oeml___rest_api_ord_type__NULL = 0, oeml___rest_api_ord_type__LIMIT } oeml___rest_api_ord_type__e;

char* ord_type_ord_type_ToString(oeml___rest_api_ord_type__e ord_type);

oeml___rest_api_ord_type__e ord_type_ord_type_FromString(char* ord_type);

//cJSON *ord_type_ord_type_convertToJSON(oeml___rest_api_ord_type__e ord_type);

//oeml___rest_api_ord_type__e ord_type_ord_type_parseFromJSON(cJSON *ord_typeJSON);

#endif /* _ord_type_H_ */

