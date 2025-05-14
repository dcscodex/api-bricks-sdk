-module(openapi_api).

-export([ v1_full_text_get/0
        ]).

-define(BASE_URL, "").

%% @doc Full-text search of SEC filing documents
%% Search across SEC filing documents with advanced filtering and sorting capabilities.    ### Available Sort Fields    Field Name | Description  -----------|-------------  AccessionNumber | SEC filing accession number  FormType | Type of the filing document  FilingDate | Date when filing was submitted  CompanyName | Name of the company  CIK | Central Index Key  DocumentFilename | Name of the filing document  DocumentDescription | Description of the document    ### Search Options    Option | Description  --------|-------------  text_contains | Keywords that must appear in the document  text_not_contain | Keywords that must not appear in the document    ### Date Format  All dates must be provided in YYYY-MM-DD format    :::tip  Use text_contains and text_not_contain with multiple keywords separated by commas for more precise searches  :::    :::note  The search is case-insensitive and supports partial word matches  :::
-spec v1_full_text_get() ->
  openapi_utils:response().
v1_full_text_get() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/v1/full-text"],
  QueryString = [<<"form_type=">>, FormType, <<"&">>, <<"filling_date_start=">>, FillingDateStart, <<"&">>, <<"filling_date_end=">>, FillingDateEnd, <<"&">>, <<"text_contains=">>, TextContains, <<"&">>, <<"text_not_contain=">>, TextNotContain, <<"&">>, <<"page_size=">>, PageSize, <<"&">>, <<"page_number=">>, PageNumber, <<"&">>, <<"sort_by=">>, SortBy, <<"&">>, <<"sort_order=">>, SortOrder, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

