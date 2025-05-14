#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/dto_sec_filing_result_dto.h"
#include "../model/mvc_problem_details.h"
#include "../model/mvc_validation_problem_details.h"


// Full-text search of SEC filing documents
//
// Search across SEC filing documents with advanced filtering and sorting capabilities.    ### Available Sort Fields    Field Name | Description  -----------|-------------  AccessionNumber | SEC filing accession number  FormType | Type of the filing document  FilingDate | Date when filing was submitted  CompanyName | Name of the company  CIK | Central Index Key  DocumentFilename | Name of the filing document  DocumentDescription | Description of the document    ### Search Options    Option | Description  --------|-------------  text_contains | Keywords that must appear in the document  text_not_contain | Keywords that must not appear in the document    ### Date Format  All dates must be provided in YYYY-MM-DD format    :::tip  Use text_contains and text_not_contain with multiple keywords separated by commas for more precise searches  :::    :::note  The search is case-insensitive and supports partial word matches  :::
//
list_t*
FullTextSearchAPI_v1FullTextGet(apiClient_t *apiClient, char *form_type, char *filling_date_start, char *filling_date_end, char *text_contains, char *text_not_contain, int *page_size, int *page_number, char *sort_by, char *sort_order);


