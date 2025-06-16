#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>
#include "FileDownloadAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096


// Download file from SEC EDGAR archive
//
// Downloads a specific file from the SEC EDGAR archive using the accession number and filename. The file is streamed directly from the SEC servers to the client.  ### Accession Number Format Accession numbers must be in the format: 0000000000-00-000000 (10 digits, dash, 2 digits, dash, 6 digits)  ### File Name Examples - Primary documents: `d123456d10k.htm`, `d789012d8k.htm` - XBRL files: `d123456d10k_htm.xml`, `FilingSummary.xml` - Exhibits: `d123456dexhibit99.htm`, `d123456dex101.htm`  ### File Types The endpoint supports downloading various file types from SEC filings: - HTML documents (.htm, .html) - XBRL files (.xml, .xsd) - Text files (.txt) - PDF files (.pdf) - Other document formats as submitted to SEC  :::tip You can find available filenames for a specific filing using the `/v1/filings` endpoint first :::  :::warning This endpoint streams files directly from the SEC. Large files may take longer to download. :::
//
void
FileDownloadAPI_v1DownloadGet(apiClient_t *apiClient, char *accession_no, char *file_name)
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
    char *localVarPath = strdup("/v1/download");





    // query parameters
    char *keyQuery_accession_no = NULL;
    char * valueQuery_accession_no = NULL;
    keyValuePair_t *keyPairQuery_accession_no = 0;
    if (accession_no)
    {
        keyQuery_accession_no = strdup("accession_no");
        valueQuery_accession_no = strdup((accession_no));
        keyPairQuery_accession_no = keyValuePair_create(keyQuery_accession_no, valueQuery_accession_no);
        list_addElement(localVarQueryParameters,keyPairQuery_accession_no);
    }

    // query parameters
    char *keyQuery_file_name = NULL;
    char * valueQuery_file_name = NULL;
    keyValuePair_t *keyPairQuery_file_name = 0;
    if (file_name)
    {
        keyQuery_file_name = strdup("file_name");
        valueQuery_file_name = strdup((file_name));
        keyPairQuery_file_name = keyValuePair_create(keyQuery_file_name, valueQuery_file_name);
        list_addElement(localVarQueryParameters,keyPairQuery_file_name);
    }
    list_addElement(localVarHeaderType,"application/octet-stream"); //produces
    list_addElement(localVarHeaderType,"text/html"); //produces
    list_addElement(localVarHeaderType,"application/xml"); //produces
    list_addElement(localVarHeaderType,"text/plain"); //produces
    list_addElement(localVarHeaderType,"application/pdf"); //produces
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
    //    printf("%s\n","File downloaded successfully");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 400) {
    //    printf("%s\n","Invalid request parameters");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 404) {
    //    printf("%s\n","Filing or file not found");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 500) {
    //    printf("%s\n","Server error");
    //}
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_accession_no){
        free(keyQuery_accession_no);
        keyQuery_accession_no = NULL;
    }
    if(valueQuery_accession_no){
        free(valueQuery_accession_no);
        valueQuery_accession_no = NULL;
    }
    if(keyPairQuery_accession_no){
        keyValuePair_free(keyPairQuery_accession_no);
        keyPairQuery_accession_no = NULL;
    }
    if(keyQuery_accession_no){
        free(keyQuery_accession_no);
        keyQuery_accession_no = NULL;
    }
    if(keyPairQuery_accession_no){
        keyValuePair_free(keyPairQuery_accession_no);
        keyPairQuery_accession_no = NULL;
    }
    if(keyQuery_file_name){
        free(keyQuery_file_name);
        keyQuery_file_name = NULL;
    }
    if(valueQuery_file_name){
        free(valueQuery_file_name);
        valueQuery_file_name = NULL;
    }
    if(keyPairQuery_file_name){
        keyValuePair_free(keyPairQuery_file_name);
        keyPairQuery_file_name = NULL;
    }
    if(keyQuery_file_name){
        free(keyQuery_file_name);
        keyQuery_file_name = NULL;
    }
    if(keyPairQuery_file_name){
        keyValuePair_free(keyPairQuery_file_name);
        keyPairQuery_file_name = NULL;
    }

}

