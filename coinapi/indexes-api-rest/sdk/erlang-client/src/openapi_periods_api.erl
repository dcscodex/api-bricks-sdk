-module(openapi_periods_api).

-export([v1_metadata_periods_get/1, v1_metadata_periods_get/2]).

-define(BASE_URL, <<"">>).

%% @doc List all periods
%% Get full list of supported time periods                ### Available periods                Time unit | Period identifiers  --------- | -----------  Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC  Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN  Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS  Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY  Month | 1MTH, 2MTH, 3MTH, 4MTH, 6MTH  Year | 1YRS, 2YRS, 3YRS, 4YRS, 5YRS                :::tip  You can assume that we will not remove any periods from this response, however, we may add new ones.  :::
-spec v1_metadata_periods_get(ctx:ctx()) -> {ok, [openapi_metadata_timeseries_period:openapi_metadata_timeseries_period()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_metadata_periods_get(Ctx) ->
    v1_metadata_periods_get(Ctx, #{}).

-spec v1_metadata_periods_get(ctx:ctx(), maps:map()) -> {ok, [openapi_metadata_timeseries_period:openapi_metadata_timeseries_period()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_metadata_periods_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/metadata/periods"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


