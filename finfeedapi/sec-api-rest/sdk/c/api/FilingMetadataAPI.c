#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>
#include "FilingMetadataAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096

// Functions for enum  for FilingMetadataAPI_v1FilingsGet

static char* v1FilingsGet__ToString(rest_api_v1FilingsGet_sort_by_e ){
    char *Array[] =  { "NULL", "AccessionNumber", "FilingDate", "ReportDate", "AcceptanceDateTime", "Size" };
    return Array[];
}

static rest_api_v1FilingsGet_sort_by_e v1FilingsGet__FromString(char* ){
    int stringToReturn = 0;
    char *Array[] =  { "NULL", "AccessionNumber", "FilingDate", "ReportDate", "AcceptanceDateTime", "Size" };
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
// Function v1FilingsGet__convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *v1FilingsGet__convertToJSON(rest_api_v1FilingsGet_sort_by_e ) {
    cJSON *item = cJSON_CreateObject();
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function v1FilingsGet__parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static rest_api_v1FilingsGet_sort_by_e v1FilingsGet__parseFromJSON(cJSON* JSON) {
    rest_api_v1FilingsGet_sort_by_e Variable = 0;
    return Variable;
end:
    return 0;
}
*/


// Query SEC filing metadata
//
// Retrieves metadata for SEC filings based on various filter criteria with pagination and sorting support.    ### Available Sort Fields    Field Name | Description  -----------|-------------  AccessionNumber | SEC filing accession number  FilingDate | Date when filing was submitted  AcceptanceDateTime | Date and time of filing acceptance  ReportDate | Date of the report  Size | Size of the filing document    ### Date Format  All dates must be provided in YYYY-MM-DD format    ### Form Types  Form types can be provided as comma-separated values, e.g.: \"10-K,8-K,10-Q\"    :::tip  For optimal performance, use date ranges and form types to narrow down your search  :::
//
list_t*
FilingMetadataAPI_v1FilingsGet(apiClient_t *apiClient, long cik, char *form_type, char *filling_date_start, char *filling_date_end, char *report_date_start, char *report_date_end, char *items_contain, int *page_size, int *page_number, dto_filing_sort_by_e sort_by, char *sort_order)
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
    char *localVarPath = strdup("/v1/filings");





    // query parameters
    char *keyQuery_cik = NULL;
    long valueQuery_cik ;
    keyValuePair_t *keyPairQuery_cik = 0;
    if (cik)
    {
        keyQuery_cik = strdup("cik");
        valueQuery_cik = (cik);
        keyPairQuery_cik = keyValuePair_create(keyQuery_cik, &valueQuery_cik);
        list_addElement(localVarQueryParameters,keyPairQuery_cik);
    }

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
    char *keyQuery_report_date_start = NULL;
    char * valueQuery_report_date_start = NULL;
    keyValuePair_t *keyPairQuery_report_date_start = 0;
    if (report_date_start)
    {
        keyQuery_report_date_start = strdup("report_date_start");
        valueQuery_report_date_start = strdup((report_date_start));
        keyPairQuery_report_date_start = keyValuePair_create(keyQuery_report_date_start, valueQuery_report_date_start);
        list_addElement(localVarQueryParameters,keyPairQuery_report_date_start);
    }

    // query parameters
    char *keyQuery_report_date_end = NULL;
    char * valueQuery_report_date_end = NULL;
    keyValuePair_t *keyPairQuery_report_date_end = 0;
    if (report_date_end)
    {
        keyQuery_report_date_end = strdup("report_date_end");
        valueQuery_report_date_end = strdup((report_date_end));
        keyPairQuery_report_date_end = keyValuePair_create(keyQuery_report_date_end, valueQuery_report_date_end);
        list_addElement(localVarQueryParameters,keyPairQuery_report_date_end);
    }

    // query parameters
    char *keyQuery_items_contain = NULL;
    char * valueQuery_items_contain = NULL;
    keyValuePair_t *keyPairQuery_items_contain = 0;
    if (items_contain)
    {
        keyQuery_items_contain = strdup("items_contain");
        valueQuery_items_contain = strdup((items_contain));
        keyPairQuery_items_contain = keyValuePair_create(keyQuery_items_contain, valueQuery_items_contain);
        list_addElement(localVarQueryParameters,keyPairQuery_items_contain);
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
    dto_filing_sort_by_e valueQuery_sort_by ;
    keyValuePair_t *keyPairQuery_sort_by = 0;
    if (sort_by)
    {
        keyQuery_sort_by = strdup("sort_by");
        valueQuery_sort_by = (sort_by);
        keyPairQuery_sort_by = keyValuePair_create(keyQuery_sort_by, strdup(v1FilingsGet__ToString(
        &valueQuery_sort_by)));
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
        cJSON *FilingMetadataAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(FilingMetadataAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, FilingMetadataAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( FilingMetadataAPIlocalVarJSON);
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
    if(keyQuery_cik){
        free(keyQuery_cik);
        keyQuery_cik = NULL;
    }
    if(keyPairQuery_cik){
        keyValuePair_free(keyPairQuery_cik);
        keyPairQuery_cik = NULL;
    }
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
    if(keyQuery_report_date_start){
        free(keyQuery_report_date_start);
        keyQuery_report_date_start = NULL;
    }
    if(valueQuery_report_date_start){
        free(valueQuery_report_date_start);
        valueQuery_report_date_start = NULL;
    }
    if(keyPairQuery_report_date_start){
        keyValuePair_free(keyPairQuery_report_date_start);
        keyPairQuery_report_date_start = NULL;
    }
    if(keyQuery_report_date_end){
        free(keyQuery_report_date_end);
        keyQuery_report_date_end = NULL;
    }
    if(valueQuery_report_date_end){
        free(valueQuery_report_date_end);
        valueQuery_report_date_end = NULL;
    }
    if(keyPairQuery_report_date_end){
        keyValuePair_free(keyPairQuery_report_date_end);
        keyPairQuery_report_date_end = NULL;
    }
    if(keyQuery_items_contain){
        free(keyQuery_items_contain);
        keyQuery_items_contain = NULL;
    }
    if(valueQuery_items_contain){
        free(valueQuery_items_contain);
        valueQuery_items_contain = NULL;
    }
    if(keyPairQuery_items_contain){
        keyValuePair_free(keyPairQuery_items_contain);
        keyPairQuery_items_contain = NULL;
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

