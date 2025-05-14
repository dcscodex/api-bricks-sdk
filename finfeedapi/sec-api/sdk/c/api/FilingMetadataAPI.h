#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/dto_filing_metadata_dto.h"
#include "../model/dto_filing_sort_by.h"
#include "../model/mvc_problem_details.h"
#include "../model/mvc_validation_problem_details.h"

// Enum  for FilingMetadataAPI_v1FilingsGet
typedef enum  { rest_api_v1FilingsGet__NULL = 0, rest_api_v1FilingsGet__AccessionNumber, rest_api_v1FilingsGet__FilingDate, rest_api_v1FilingsGet__ReportDate, rest_api_v1FilingsGet__AcceptanceDateTime, rest_api_v1FilingsGet__Size } rest_api_v1FilingsGet_sort_by_e;


// Query SEC filing metadata
//
// Retrieves metadata for SEC filings based on various filter criteria with pagination and sorting support.    ### Available Sort Fields    Field Name | Description  -----------|-------------  AccessionNumber | SEC filing accession number  FilingDate | Date when filing was submitted  AcceptanceDateTime | Date and time of filing acceptance  ReportDate | Date of the report  Size | Size of the filing document    ### Date Format  All dates must be provided in YYYY-MM-DD format    ### Form Types  Form types can be provided as comma-separated values, e.g.: \"10-K,8-K,10-Q\"    :::tip  For optimal performance, use date ranges and form types to narrow down your search  :::
//
list_t*
FilingMetadataAPI_v1FilingsGet(apiClient_t *apiClient, long cik, char *form_type, char *filling_date_start, char *filling_date_end, char *report_date_start, char *report_date_end, char *items_contain, int *page_size, int *page_number, dto_filing_sort_by_e sort_by, char *sort_order);


