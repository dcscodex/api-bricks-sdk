#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"


// Get authentication certificate
//
// Providing PEM file with the Private Key, Public Key and the Certificate to authenticate to the EMS API.
//
char*
CertificateAPI_certificate(apiClient_t *apiClient);


