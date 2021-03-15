/*
 * ord_status.h
 *
 * Order statuses and the lifecycle are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-lifecycle\&quot;&gt;OEML / Starter Guide / Order Lifecycle&lt;/a&gt; 
 */

#ifndef _ord_status_H_
#define _ord_status_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct ord_status_t ord_status_t;


// Enum  for ord_status

typedef enum { oeml___rest_api_ord_status__NULL = 0, oeml___rest_api_ord_status__RECEIVED, oeml___rest_api_ord_status__ROUTING, oeml___rest_api_ord_status__ROUTED, oeml___rest_api_ord_status___NEW, oeml___rest_api_ord_status__PENDING_CANCEL, oeml___rest_api_ord_status__PARTIALLY_FILLED, oeml___rest_api_ord_status__FILLED, oeml___rest_api_ord_status__CANCELED, oeml___rest_api_ord_status__REJECTED } oeml___rest_api_ord_status__e;

char* ord_status_ord_status_ToString(oeml___rest_api_ord_status__e ord_status);

oeml___rest_api_ord_status__e ord_status_ord_status_FromString(char* ord_status);

//cJSON *ord_status_ord_status_convertToJSON(oeml___rest_api_ord_status__e ord_status);

//oeml___rest_api_ord_status__e ord_status_ord_status_parseFromJSON(cJSON *ord_statusJSON);

#endif /* _ord_status_H_ */

