-module(openapi_exchange_rates_api).

-export([get_specific_rate/3, get_specific_rate/4,
         v1_exchangerate_asset_id_base_asset_id_quote_history_get/3, v1_exchangerate_asset_id_base_asset_id_quote_history_get/4,
         v1_exchangerate_asset_id_base_get/2, v1_exchangerate_asset_id_base_get/3,
         v1_exchangerate_history_periods_get/1, v1_exchangerate_history_periods_get/2]).

-define(BASE_URL, <<"">>).

%% @doc Get specific rate
%% Retrieves the exchange rate for a specific base and quote asset at a given time or the current rate.              :::info If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements. :::
-spec get_specific_rate(ctx:ctx(), binary(), binary()) -> {ok, openapi_v1_exchange_rate:openapi_v1_exchange_rate(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_specific_rate(Ctx, AssetIdBase, AssetIdQuote) ->
    get_specific_rate(Ctx, AssetIdBase, AssetIdQuote, #{}).

-spec get_specific_rate(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, openapi_v1_exchange_rate:openapi_v1_exchange_rate(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_specific_rate(Ctx, AssetIdBase, AssetIdQuote, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/exchangerate/", AssetIdBase, "/", AssetIdQuote, ""],
    QS = lists:flatten([])++openapi_utils:optional_params(['time'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Timeseries data
%% Get the historical exchange rates between two assets in the form of the timeseries.
-spec v1_exchangerate_asset_id_base_asset_id_quote_history_get(ctx:ctx(), binary(), binary()) -> {ok, [openapi_v1_exchange_rates_timeseries_item:openapi_v1_exchange_rates_timeseries_item()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_exchangerate_asset_id_base_asset_id_quote_history_get(Ctx, AssetIdBase, AssetIdQuote) ->
    v1_exchangerate_asset_id_base_asset_id_quote_history_get(Ctx, AssetIdBase, AssetIdQuote, #{}).

-spec v1_exchangerate_asset_id_base_asset_id_quote_history_get(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, [openapi_v1_exchange_rates_timeseries_item:openapi_v1_exchange_rates_timeseries_item()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_exchangerate_asset_id_base_asset_id_quote_history_get(Ctx, AssetIdBase, AssetIdQuote, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/exchangerate/", AssetIdBase, "/", AssetIdQuote, "/history"],
    QS = lists:flatten([])++openapi_utils:optional_params(['period_id', 'time_start', 'time_end', 'limit'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get all current rates
%% Get the current exchange rate between requested asset and all other assets.              :::info If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements. :::              :::info You can invert the rates by using Y = 1 / X equation, for example BTC/USD = 1 / (USD/BTC); :::
-spec v1_exchangerate_asset_id_base_get(ctx:ctx(), binary()) -> {ok, openapi_v1_exchange_rates:openapi_v1_exchange_rates(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_exchangerate_asset_id_base_get(Ctx, AssetIdBase) ->
    v1_exchangerate_asset_id_base_get(Ctx, AssetIdBase, #{}).

-spec v1_exchangerate_asset_id_base_get(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_v1_exchange_rates:openapi_v1_exchange_rates(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_exchangerate_asset_id_base_get(Ctx, AssetIdBase, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/exchangerate/", AssetIdBase, ""],
    QS = lists:flatten([])++openapi_utils:optional_params(['filter_asset_id', 'invert', 'time'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Timeseries periods
%% You can also obtain historical exchange rates of any asset pair, grouped into time periods. Get full list of supported time periods available for requesting exchange rates historical timeseries data.              ## Timeseries periods Time unit | Period identifiers --- | --- Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY
-spec v1_exchangerate_history_periods_get(ctx:ctx()) -> {ok, [openapi_v1_timeseries_period:openapi_v1_timeseries_period()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_exchangerate_history_periods_get(Ctx) ->
    v1_exchangerate_history_periods_get(Ctx, #{}).

-spec v1_exchangerate_history_periods_get(ctx:ctx(), maps:map()) -> {ok, [openapi_v1_timeseries_period:openapi_v1_timeseries_period()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_exchangerate_history_periods_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/exchangerate/history/periods"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


