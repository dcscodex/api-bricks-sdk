#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>
#include "FullTextSearchAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096


// Full-text search of SEC filing documents
//
// Search across SEC filing documents with advanced filtering and sorting capabilities.    ### Available Sort Fields    Field Name | Description  -----------|-------------  AccessionNumber | SEC filing accession number  FormType | Type of the filing document  FilingDate | Date when filing was submitted  CompanyName | Name of the company  CIK | Central Index Key  DocumentFilename | Name of the filing document  DocumentDescription | Description of the document    ### Search Options    Option | Description  --------|-------------  text_contains | Keywords that must appear in the document  text_not_contain | Keywords that must not appear in the document    ### Date Format  All dates must be provided in YYYY-MM-DD format    :::tip  Use text_contains and text_not_contain with multiple keywords separated by commas for more precise searches  :::    :::note  The search is case-insensitive and supports partial word matches  :::
//
list_t*
FullTextSearchAPI_v1FullTextGet(apiClient_t *apiClient, char *form_type, char *filling_date_start, char *filling_date_end, char *text_contains, char *text_not_contain, int *page_size, int *page_number, char *sort_by, char *sort_order)
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
    char *localVarPath = strdup("/v1/full-text");





    // query parameters
    char *keyQuery_form_type = NULL;
    char * valueQuery_form_type = NULL;
    keyValuePair_t *keyPairQuery_form_type = 0;
    if (form_type)
    {
        keyQuery_form_type = strdup("form_type");
        valueQuery_form_type = strdup((form_type));
        keyPairQuery_form_type = keyValuePair_create(keyQuery_form_type, valueQuery_form_type);
        list_addElement(localVarQueryParameters,keyPairQuery_form_type);
    }

    // query parameters
    char *keyQuery_filling_date_start = NULL;
    char * valueQuery_filling_date_start = NULL;
    keyValuePair_t *keyPairQuery_filling_date_start = 0;
    if (filling_date_start)
    {
        keyQuery_filling_date_start = strdup("filling_date_start");
        valueQuery_filling_date_start = strdup((filling_date_start));
        keyPairQuery_filling_date_start = keyValuePair_create(keyQuery_filling_date_start, valueQuery_filling_date_start);
        list_addElement(localVarQueryParameters,keyPairQuery_filling_date_start);
    }

    // query parameters
    char *keyQuery_filling_date_end = NULL;
    char * valueQuery_filling_date_end = NULL;
    keyValuePair_t *keyPairQuery_filling_date_end = 0;
    if (filling_date_end)
    {
        keyQuery_filling_date_end = strdup("filling_date_end");
        valueQuery_filling_date_end = strdup((filling_date_end));
        keyPairQuery_filling_date_end = keyValuePair_create(keyQuery_filling_date_end, valueQuery_filling_date_end);
        list_addElement(localVarQueryParameters,keyPairQuery_filling_date_end);
    }

    // query parameters
    char *keyQuery_text_contains = NULL;
    char * valueQuery_text_contains = NULL;
    keyValuePair_t *keyPairQuery_text_contains = 0;
    if (text_contains)
    {
        keyQuery_text_contains = strdup("text_contains");
        valueQuery_text_contains = strdup((text_contains));
        keyPairQuery_text_contains = keyValuePair_create(keyQuery_text_contains, valueQuery_text_contains);
        list_addElement(localVarQueryParameters,keyPairQuery_text_contains);
    }

    // query parameters
    char *keyQuery_text_not_contain = NULL;
    char * valueQuery_text_not_contain = NULL;
    keyValuePair_t *keyPairQuery_text_not_contain = 0;
    if (text_not_contain)
    {
        keyQuery_text_not_contain = strdup("text_not_contain");
        valueQuery_text_not_contain = strdup((text_not_contain));
        keyPairQuery_text_not_contain = keyValuePair_create(keyQuery_text_not_contain, valueQuery_text_not_contain);
        list_addElement(localVarQueryParameters,keyPairQuery_text_not_contain);
    }

    // query parameters
    char *keyQuery_page_size = NULL;
    char * valueQuery_page_size = NULL;
    keyValuePair_t *keyPairQuery_page_size = 0;
    if (page_size)
    {
        keyQuery_page_size = strdup("page_size");
        valueQuery_page_size = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_page_size, MAX_NUMBER_LENGTH, "%d", *page_size);
        keyPairQuery_page_size = keyValuePair_create(keyQuery_page_size, valueQuery_page_size);
        list_addElement(localVarQueryParameters,keyPairQuery_page_size);
    }

    // query parameters
    char *keyQuery_page_number = NULL;
    char * valueQuery_page_number = NULL;
    keyValuePair_t *keyPairQuery_page_number = 0;
    if (page_number)
    {
        keyQuery_page_number = strdup("page_number");
        valueQuery_page_number = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_page_number, MAX_NUMBER_LENGTH, "%d", *page_number);
        keyPairQuery_page_number = keyValuePair_create(keyQuery_page_number, valueQuery_page_number);
        list_addElement(localVarQueryParameters,keyPairQuery_page_number);
    }

    // query parameters
    char *keyQuery_sort_by = NULL;
    char * valueQuery_sort_by = NULL;
    keyValuePair_t *keyPairQuery_sort_by = 0;
    if (sort_by)
    {
        keyQuery_sort_by = strdup("sort_by");
        valueQuery_sort_by = strdup((sort_by));
        keyPairQuery_sort_by = keyValuePair_create(keyQuery_sort_by, valueQuery_sort_by);
        list_addElement(localVarQueryParameters,keyPairQuery_sort_by);
    }

    // query parameters
    char *keyQuery_sort_order = NULL;
    char * valueQuery_sort_order = NULL;
    keyValuePair_t *keyPairQuery_sort_order = 0;
    if (sort_order)
    {
        keyQuery_sort_order = strdup("sort_order");
        valueQuery_sort_order = strdup((sort_order));
        keyPairQuery_sort_order = keyValuePair_create(keyQuery_sort_order, valueQuery_sort_order);
        list_addElement(localVarQueryParameters,keyPairQuery_sort_order);
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
    //    printf("%s\n","Successful operation");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 400) {
    //    printf("%s\n","Invalid request");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 500) {
    //    printf("%s\n","Server error");
    //}
    list_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *FullTextSearchAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(FullTextSearchAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, FullTextSearchAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( FullTextSearchAPIlocalVarJSON);
        cJSON_Delete( VarJSON);
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
    if(keyQuery_form_type){
        free(keyQuery_form_type);
        keyQuery_form_type = NULL;
    }
    if(valueQuery_form_type){
        free(valueQuery_form_type);
        valueQuery_form_type = NULL;
    }
    if(keyPairQuery_form_type){
        keyValuePair_free(keyPairQuery_form_type);
        keyPairQuery_form_type = NULL;
    }
    if(keyQuery_filling_date_start){
        free(keyQuery_filling_date_start);
        keyQuery_filling_date_start = NULL;
    }
    if(valueQuery_filling_date_start){
        free(valueQuery_filling_date_start);
        valueQuery_filling_date_start = NULL;
    }
    if(keyPairQuery_filling_date_start){
        keyValuePair_free(keyPairQuery_filling_date_start);
        keyPairQuery_filling_date_start = NULL;
    }
    if(keyQuery_filling_date_end){
        free(keyQuery_filling_date_end);
        keyQuery_filling_date_end = NULL;
    }
    if(valueQuery_filling_date_end){
        free(valueQuery_filling_date_end);
        valueQuery_filling_date_end = NULL;
    }
    if(keyPairQuery_filling_date_end){
        keyValuePair_free(keyPairQuery_filling_date_end);
        keyPairQuery_filling_date_end = NULL;
    }
    if(keyQuery_text_contains){
        free(keyQuery_text_contains);
        keyQuery_text_contains = NULL;
    }
    if(valueQuery_text_contains){
        free(valueQuery_text_contains);
        valueQuery_text_contains = NULL;
    }
    if(keyPairQuery_text_contains){
        keyValuePair_free(keyPairQuery_text_contains);
        keyPairQuery_text_contains = NULL;
    }
    if(keyQuery_text_not_contain){
        free(keyQuery_text_not_contain);
        keyQuery_text_not_contain = NULL;
    }
    if(valueQuery_text_not_contain){
        free(valueQuery_text_not_contain);
        valueQuery_text_not_contain = NULL;
    }
    if(keyPairQuery_text_not_contain){
        keyValuePair_free(keyPairQuery_text_not_contain);
        keyPairQuery_text_not_contain = NULL;
    }
    if(keyQuery_page_size){
        free(keyQuery_page_size);
        keyQuery_page_size = NULL;
    }
    if(valueQuery_page_size){
        free(valueQuery_page_size);
        valueQuery_page_size = NULL;
    }
    if(keyPairQuery_page_size){
        keyValuePair_free(keyPairQuery_page_size);
        keyPairQuery_page_size = NULL;
    }
    if(keyQuery_page_number){
        free(keyQuery_page_number);
        keyQuery_page_number = NULL;
    }
    if(valueQuery_page_number){
        free(valueQuery_page_number);
        valueQuery_page_number = NULL;
    }
    if(keyPairQuery_page_number){
        keyValuePair_free(keyPairQuery_page_number);
        keyPairQuery_page_number = NULL;
    }
    if(keyQuery_sort_by){
        free(keyQuery_sort_by);
        keyQuery_sort_by = NULL;
    }
    if(valueQuery_sort_by){
        free(valueQuery_sort_by);
        valueQuery_sort_by = NULL;
    }
    if(keyPairQuery_sort_by){
        keyValuePair_free(keyPairQuery_sort_by);
        keyPairQuery_sort_by = NULL;
    }
    if(keyQuery_sort_order){
        free(keyQuery_sort_order);
        keyQuery_sort_order = NULL;
    }
    if(valueQuery_sort_order){
        free(valueQuery_sort_order);
        valueQuery_sort_order = NULL;
    }
    if(keyPairQuery_sort_order){
        keyValuePair_free(keyPairQuery_sort_order);
        keyPairQuery_sort_order = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

