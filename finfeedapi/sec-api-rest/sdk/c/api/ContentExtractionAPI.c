#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>
#include "ContentExtractionAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096

// Functions for enum  for ContentExtractionAPI_v1ExtractorGet

static char* v1ExtractorGet__ToString(rest_api_v1ExtractorGet_type_e ){
    char *Array[] =  { "NULL", "text", "html" };
    return Array[];
}

static rest_api_v1ExtractorGet_type_e v1ExtractorGet__FromString(char* ){
    int stringToReturn = 0;
    char *Array[] =  { "NULL", "text", "html" };
    size_t sizeofArray = sizeof(Array) / sizeof(Array[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(, Array[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function v1ExtractorGet__convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *v1ExtractorGet__convertToJSON(rest_api_v1ExtractorGet_type_e ) {
    cJSON *item = cJSON_CreateObject();
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function v1ExtractorGet__parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static rest_api_v1ExtractorGet_type_e v1ExtractorGet__parseFromJSON(cJSON* JSON) {
    rest_api_v1ExtractorGet_type_e Variable = 0;
    return Variable;
end:
    return 0;
}
*/

// Functions for enum  for ContentExtractionAPI_v1ExtractorItemGet

static char* v1ExtractorItemGet__ToString(rest_api_v1ExtractorItemGet_type_e ){
    char *Array[] =  { "NULL", "text", "html" };
    return Array[];
}

static rest_api_v1ExtractorItemGet_type_e v1ExtractorItemGet__FromString(char* ){
    int stringToReturn = 0;
    char *Array[] =  { "NULL", "text", "html" };
    size_t sizeofArray = sizeof(Array) / sizeof(Array[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(, Array[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function v1ExtractorItemGet__convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *v1ExtractorItemGet__convertToJSON(rest_api_v1ExtractorItemGet_type_e ) {
    cJSON *item = cJSON_CreateObject();
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function v1ExtractorItemGet__parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static rest_api_v1ExtractorItemGet_type_e v1ExtractorItemGet__parseFromJSON(cJSON* JSON) {
    rest_api_v1ExtractorItemGet_type_e Variable = 0;
    return Variable;
end:
    return 0;
}
*/


// Extract and classify SEC filing content
//
// Retrieves filing content from the EDGAR database and intelligently classifies it according to form type and item categories.    ### Supported Form Types    Form Type | Description  ----------|------------  8-K      | Current report filing  10-K     | Annual report filing  10-Q     | Quarterly report filing    ### Content Classification  - 8-K forms: Content classified by item numbers (e.g., 1.01, 2.01)  - 10-K/10-Q forms: Items categorized by their respective part and item structure    :::note  Both HTML and plain text documents are supported for content extraction.  :::
//
dto_filing_extract_result_dto_t*
ContentExtractionAPI_v1ExtractorGet(apiClient_t *apiClient, char *accession_number, dto_extractor_type_e type)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/v1/extractor");





    // query parameters
    char *keyQuery_accession_number = NULL;
    char * valueQuery_accession_number = NULL;
    keyValuePair_t *keyPairQuery_accession_number = 0;
    if (accession_number)
    {
        keyQuery_accession_number = strdup("accession_number");
        valueQuery_accession_number = strdup((accession_number));
        keyPairQuery_accession_number = keyValuePair_create(keyQuery_accession_number, valueQuery_accession_number);
        list_addElement(localVarQueryParameters,keyPairQuery_accession_number);
    }

    // query parameters
    char *keyQuery_type = NULL;
    dto_extractor_type_e valueQuery_type ;
    keyValuePair_t *keyPairQuery_type = 0;
    if (type)
    {
        keyQuery_type = strdup("type");
        valueQuery_type = (type);
        keyPairQuery_type = keyValuePair_create(keyQuery_type, strdup(v1ExtractorGet__ToString(
        &valueQuery_type)));
        list_addElement(localVarQueryParameters,keyPairQuery_type);
    }
    list_addElement(localVarHeaderType,"application/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","Successful extraction");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 400) {
    //    printf("%s\n","Invalid request");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 404) {
    //    printf("%s\n","Filing not found");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 500) {
    //    printf("%s\n","Server error");
    //}
    //nonprimitive not container
    dto_filing_extract_result_dto_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ContentExtractionAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = dto_filing_extract_result_dto_parseFromJSON(ContentExtractionAPIlocalVarJSON);
        cJSON_Delete(ContentExtractionAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_accession_number){
        free(keyQuery_accession_number);
        keyQuery_accession_number = NULL;
    }
    if(valueQuery_accession_number){
        free(valueQuery_accession_number);
        valueQuery_accession_number = NULL;
    }
    if(keyPairQuery_accession_number){
        keyValuePair_free(keyPairQuery_accession_number);
        keyPairQuery_accession_number = NULL;
    }
    if(keyQuery_type){
        free(keyQuery_type);
        keyQuery_type = NULL;
    }
    if(keyPairQuery_type){
        keyValuePair_free(keyPairQuery_type);
        keyPairQuery_type = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Extract specific item content from SEC filing
//
// Retrieves filing content from the EDGAR database and returns only the text content of the specified item number.    ### Item Number Format    Form Type | Item Format Examples  -----------|-------------------  8-K       | 1.01, 2.01, 7.01  10-K      | 1, 2, 3  10-K/10-Q | PartI 1, PartII 2    :::tip  For best results, ensure the item number matches exactly with the filing's structure.  :::
//
char*
ContentExtractionAPI_v1ExtractorItemGet(apiClient_t *apiClient, char *accession_number, char *item_number, dto_extractor_type_e type)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/v1/extractor/item");





    // query parameters
    char *keyQuery_accession_number = NULL;
    char * valueQuery_accession_number = NULL;
    keyValuePair_t *keyPairQuery_accession_number = 0;
    if (accession_number)
    {
        keyQuery_accession_number = strdup("accession_number");
        valueQuery_accession_number = strdup((accession_number));
        keyPairQuery_accession_number = keyValuePair_create(keyQuery_accession_number, valueQuery_accession_number);
        list_addElement(localVarQueryParameters,keyPairQuery_accession_number);
    }

    // query parameters
    char *keyQuery_item_number = NULL;
    char * valueQuery_item_number = NULL;
    keyValuePair_t *keyPairQuery_item_number = 0;
    if (item_number)
    {
        keyQuery_item_number = strdup("item_number");
        valueQuery_item_number = strdup((item_number));
        keyPairQuery_item_number = keyValuePair_create(keyQuery_item_number, valueQuery_item_number);
        list_addElement(localVarQueryParameters,keyPairQuery_item_number);
    }

    // query parameters
    char *keyQuery_type = NULL;
    dto_extractor_type_e valueQuery_type ;
    keyValuePair_t *keyPairQuery_type = 0;
    if (type)
    {
        keyQuery_type = strdup("type");
        valueQuery_type = (type);
        keyPairQuery_type = keyValuePair_create(keyQuery_type, strdup(v1ExtractorItemGet__ToString(
        &valueQuery_type)));
        list_addElement(localVarQueryParameters,keyPairQuery_type);
    }
    list_addElement(localVarHeaderType,"application/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","Successful extraction");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 400) {
    //    printf("%s\n","Invalid request");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 404) {
    //    printf("%s\n","Filing or item not found");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 500) {
    //    printf("%s\n","Server error");
    //}
    //primitive return type simple string
    char* elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300)
        elementToReturn = strdup((char*)apiClient->dataReceived);

    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_accession_number){
        free(keyQuery_accession_number);
        keyQuery_accession_number = NULL;
    }
    if(valueQuery_accession_number){
        free(valueQuery_accession_number);
        valueQuery_accession_number = NULL;
    }
    if(keyPairQuery_accession_number){
        keyValuePair_free(keyPairQuery_accession_number);
        keyPairQuery_accession_number = NULL;
    }
    if(keyQuery_item_number){
        free(keyQuery_item_number);
        keyQuery_item_number = NULL;
    }
    if(valueQuery_item_number){
        free(valueQuery_item_number);
        valueQuery_item_number = NULL;
    }
    if(keyPairQuery_item_number){
        keyValuePair_free(keyPairQuery_item_number);
        keyPairQuery_item_number = NULL;
    }
    if(keyQuery_type){
        free(keyQuery_type);
        keyQuery_type = NULL;
    }
    if(keyPairQuery_type){
        keyValuePair_free(keyPairQuery_type);
        keyPairQuery_type = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

