#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>
#include "XBRLConversionAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096


// Convert XBRL data to JSON format
//
// Converts XBRL data to JSON format using one of three possible input methods.    ### Input Methods    1. HTML URL (htm-url)     - URL of the filing ending with .htm or .html     - Both filing URLs and index page URLs are accepted     - Example: https://www.sec.gov/Archives/edgar/data/1318605/000156459021004599/tsla-10k_20201231.htm    2. XBRL URL (xbrl-url)     - URL of the XBRL file ending with .xml     - Can be found in the dataFiles array from Query API     - Example: https://www.sec.gov/Archives/edgar/data/1318605/000156459021004599/tsla-10k_20201231_htm.xml    3. Accession Number (accession-no)     - The SEC filing accession number     - Example: 0001564590-21-004599    :::note  Only one of the three parameters should be provided. If multiple parameters are provided, the priority order is:  1. htm-url  2. xbrl-url  3. accession-no  :::    ### Supported Filing Types    - Annual Reports (10-K)  - Quarterly Reports (10-Q)  - Current Reports (8-K)  - Registration Statements (S-1, S-3)  - Foreign Private Issuer Reports (20-F, 40-F)    ### Response Format    The API returns a JSON object containing:  - Financial statements (Income Statement, Balance Sheet, Cash Flow Statement)  - Accounting policies and footnotes  - Company information  - Filing metadata    ### Example Response  ```json  {    \"StatementsOfIncome\": {      \"RevenueFromContractWithCustomerExcludingAssessedTax\": [        {          \"decimals\": \"-6\",          \"unitRef\": \"U_USD\",          \"period\": {            \"startDate\": \"2023-07-01\",            \"endDate\": \"2024-06-30\"          },          \"value\": \"245122000000\"        }      ]    }  }  ```
//
list_t*_t*
XBRLConversionAPI_v1XbrlConverterGet(apiClient_t *apiClient, char *htm_url, char *xbrl_url, char *accession_no)
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
    char *localVarPath = strdup("/v1/xbrl-converter");





    // query parameters
    char *keyQuery_htm_url = NULL;
    char * valueQuery_htm_url = NULL;
    keyValuePair_t *keyPairQuery_htm_url = 0;
    if (htm_url)
    {
        keyQuery_htm_url = strdup("htm-url");
        valueQuery_htm_url = strdup((htm_url));
        keyPairQuery_htm_url = keyValuePair_create(keyQuery_htm_url, valueQuery_htm_url);
        list_addElement(localVarQueryParameters,keyPairQuery_htm_url);
    }

    // query parameters
    char *keyQuery_xbrl_url = NULL;
    char * valueQuery_xbrl_url = NULL;
    keyValuePair_t *keyPairQuery_xbrl_url = 0;
    if (xbrl_url)
    {
        keyQuery_xbrl_url = strdup("xbrl-url");
        valueQuery_xbrl_url = strdup((xbrl_url));
        keyPairQuery_xbrl_url = keyValuePair_create(keyQuery_xbrl_url, valueQuery_xbrl_url);
        list_addElement(localVarQueryParameters,keyPairQuery_xbrl_url);
    }

    // query parameters
    char *keyQuery_accession_no = NULL;
    char * valueQuery_accession_no = NULL;
    keyValuePair_t *keyPairQuery_accession_no = 0;
    if (accession_no)
    {
        keyQuery_accession_no = strdup("accession-no");
        valueQuery_accession_no = strdup((accession_no));
        keyPairQuery_accession_no = keyValuePair_create(keyQuery_accession_no, valueQuery_accession_no);
        list_addElement(localVarQueryParameters,keyPairQuery_accession_no);
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
    //    printf("%s\n","Successful conversion");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 400) {
    //    printf("%s\n","Invalid request - check parameter format");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 404) {
    //    printf("%s\n","Filing or XBRL data not found");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 500) {
    //    printf("%s\n","Server error");
    //}
    list_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *XBRLConversionAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(XBRLConversionAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, XBRLConversionAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( XBRLConversionAPIlocalVarJSON);
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
    if(keyQuery_htm_url){
        free(keyQuery_htm_url);
        keyQuery_htm_url = NULL;
    }
    if(valueQuery_htm_url){
        free(valueQuery_htm_url);
        valueQuery_htm_url = NULL;
    }
    if(keyPairQuery_htm_url){
        keyValuePair_free(keyPairQuery_htm_url);
        keyPairQuery_htm_url = NULL;
    }
    if(keyQuery_xbrl_url){
        free(keyQuery_xbrl_url);
        keyQuery_xbrl_url = NULL;
    }
    if(valueQuery_xbrl_url){
        free(valueQuery_xbrl_url);
        valueQuery_xbrl_url = NULL;
    }
    if(keyPairQuery_xbrl_url){
        keyValuePair_free(keyPairQuery_xbrl_url);
        keyPairQuery_xbrl_url = NULL;
    }
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
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

