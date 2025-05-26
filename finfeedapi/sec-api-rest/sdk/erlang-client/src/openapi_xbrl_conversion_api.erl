-module(openapi_xbrl_conversion_api).

-export([v1_xbrl_converter_get/1, v1_xbrl_converter_get/2]).

-define(BASE_URL, <<"">>).

%% @doc Convert XBRL data to JSON format
%% Converts XBRL data to JSON format using one of three possible input methods.    ### Input Methods    1. HTML URL (htm-url)     - URL of the filing ending with .htm or .html     - Both filing URLs and index page URLs are accepted     - Example: https://www.sec.gov/Archives/edgar/data/1318605/000156459021004599/tsla-10k_20201231.htm    2. XBRL URL (xbrl-url)     - URL of the XBRL file ending with .xml     - Can be found in the dataFiles array from Query API     - Example: https://www.sec.gov/Archives/edgar/data/1318605/000156459021004599/tsla-10k_20201231_htm.xml    3. Accession Number (accession-no)     - The SEC filing accession number     - Example: 0001564590-21-004599    :::note  Only one of the three parameters should be provided. If multiple parameters are provided, the priority order is:  1. htm-url  2. xbrl-url  3. accession-no  :::    ### Supported Filing Types    - Annual Reports (10-K)  - Quarterly Reports (10-Q)  - Current Reports (8-K)  - Registration Statements (S-1, S-3)  - Foreign Private Issuer Reports (20-F, 40-F)    ### Response Format    The API returns a JSON object containing:  - Financial statements (Income Statement, Balance Sheet, Cash Flow Statement)  - Accounting policies and footnotes  - Company information  - Filing metadata    ### Example Response  ```json  {    \"StatementsOfIncome\": {      \"RevenueFromContractWithCustomerExcludingAssessedTax\": [        {          \"decimals\": \"-6\",          \"unitRef\": \"U_USD\",          \"period\": {            \"startDate\": \"2023-07-01\",            \"endDate\": \"2024-06-30\"          },          \"value\": \"245122000000\"        }      ]    }  }  ```
-spec v1_xbrl_converter_get(ctx:ctx()) -> {ok, maps:map(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_xbrl_converter_get(Ctx) ->
    v1_xbrl_converter_get(Ctx, #{}).

-spec v1_xbrl_converter_get(ctx:ctx(), maps:map()) -> {ok, maps:map(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_xbrl_converter_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/xbrl-converter"],
    QS = lists:flatten([])++openapi_utils:optional_params(['htm-url', 'xbrl-url', 'accession-no'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


