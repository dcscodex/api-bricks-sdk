-module(openapi_filing_metadata_api).

-export([v1_filings_get/1, v1_filings_get/2]).

-define(BASE_URL, <<"">>).

%% @doc Query SEC filing metadata
%% Retrieves metadata for SEC filings based on various filter criteria with pagination and sorting support.    ### Available Sort Fields    Field Name | Description  -----------|-------------  AccessionNumber | SEC filing accession number  FilingDate | Date when filing was submitted  AcceptanceDateTime | Date and time of filing acceptance  ReportDate | Date of the report  Size | Size of the filing document    ### Date Format  All dates must be provided in YYYY-MM-DD format    ### Form Types  Form types can be provided as comma-separated values, e.g.: \"10-K,8-K,10-Q\"    :::tip  For optimal performance, use date ranges and form types to narrow down your search  :::
-spec v1_filings_get(ctx:ctx()) -> {ok, [openapi_d_to_filing_metadata_dto:openapi_d_to_filing_metadata_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_filings_get(Ctx) ->
    v1_filings_get(Ctx, #{}).

-spec v1_filings_get(ctx:ctx(), maps:map()) -> {ok, [openapi_d_to_filing_metadata_dto:openapi_d_to_filing_metadata_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_filings_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/filings"],
    QS = lists:flatten([])++openapi_utils:optional_params(['cik', 'form_type', 'filling_date_start', 'filling_date_end', 'report_date_start', 'report_date_end', 'items_contain', 'page_size', 'page_number', 'sort_by', 'sort_order'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


