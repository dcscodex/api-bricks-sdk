-module(openapi_full_text_search_api).

-export([v1_full_text_get/1, v1_full_text_get/2]).

-define(BASE_URL, <<"">>).

%% @doc Full-text search of SEC filing documents
%% Search across SEC filing documents with advanced filtering and sorting capabilities.    ### Available Sort Fields    Field Name | Description  -----------|-------------  AccessionNumber | SEC filing accession number  FormType | Type of the filing document  FilingDate | Date when filing was submitted  CompanyName | Name of the company  CIK | Central Index Key  DocumentFilename | Name of the filing document  DocumentDescription | Description of the document    ### Search Options    Option | Description  --------|-------------  text_contains | Keywords that must appear in the document  text_not_contain | Keywords that must not appear in the document    ### Date Format  All dates must be provided in YYYY-MM-DD format    :::tip  Use text_contains and text_not_contain with multiple keywords separated by commas for more precise searches  :::    :::note  The search is case-insensitive and supports partial word matches  :::
-spec v1_full_text_get(ctx:ctx()) -> {ok, [openapi_d_to_sec_filing_result_dto:openapi_d_to_sec_filing_result_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_full_text_get(Ctx) ->
    v1_full_text_get(Ctx, #{}).

-spec v1_full_text_get(ctx:ctx(), maps:map()) -> {ok, [openapi_d_to_sec_filing_result_dto:openapi_d_to_sec_filing_result_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_full_text_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/full-text"],
    QS = lists:flatten([])++openapi_utils:optional_params(['form_type', 'filling_date_start', 'filling_date_end', 'text_contains', 'text_not_contain', 'page_size', 'page_number', 'sort_by', 'sort_order'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


