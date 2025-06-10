-module(openapi_trades_api).

-export([v1_trades_latest_get/1, v1_trades_latest_get/2,
         v1_trades_symbol_id_history_get/2, v1_trades_symbol_id_history_get/3,
         v1_trades_symbol_id_latest_get/2, v1_trades_symbol_id_latest_get/3]).

-define(BASE_URL, <<"">>).

%% @doc Latest data
%% Get latest trades executed up to 1 minute ago. Latest data is always returned in time descending order.
-spec v1_trades_latest_get(ctx:ctx()) -> {ok, [openapi_v1_trade:openapi_v1_trade()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_trades_latest_get(Ctx) ->
    v1_trades_latest_get(Ctx, #{}).

-spec v1_trades_latest_get(ctx:ctx(), maps:map()) -> {ok, [openapi_v1_trade:openapi_v1_trade()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_trades_latest_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/trades/latest"],
    QS = lists:flatten([])++openapi_utils:optional_params(['filter_symbol_id', 'include_id', 'limit'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Historical data
%% Get history transactions from specific symbol, returned in time ascending order.    :::warning  The 'time_start' and 'time_end' parameters must be from the same day as this endpoint provides intraday data only for specific day.  Please use the 'date' parameter instead for querying data for a specific day without filter.  :::
-spec v1_trades_symbol_id_history_get(ctx:ctx(), binary()) -> {ok, [openapi_v1_trade:openapi_v1_trade()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_trades_symbol_id_history_get(Ctx, SymbolId) ->
    v1_trades_symbol_id_history_get(Ctx, SymbolId, #{}).

-spec v1_trades_symbol_id_history_get(ctx:ctx(), binary(), maps:map()) -> {ok, [openapi_v1_trade:openapi_v1_trade()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_trades_symbol_id_history_get(Ctx, SymbolId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/trades/", SymbolId, "/history"],
    QS = lists:flatten([])++openapi_utils:optional_params(['date', 'time_start', 'time_end', 'limit', 'include_id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Latest data by symbol_id
%% Get latest trades executed up to 1 minute ago. Latest data is always returned in time descending order.
-spec v1_trades_symbol_id_latest_get(ctx:ctx(), binary()) -> {ok, [openapi_v1_trade:openapi_v1_trade()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_trades_symbol_id_latest_get(Ctx, SymbolId) ->
    v1_trades_symbol_id_latest_get(Ctx, SymbolId, #{}).

-spec v1_trades_symbol_id_latest_get(ctx:ctx(), binary(), maps:map()) -> {ok, [openapi_v1_trade:openapi_v1_trade()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_trades_symbol_id_latest_get(Ctx, SymbolId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/trades/", SymbolId, "/latest"],
    QS = lists:flatten([])++openapi_utils:optional_params(['limit', 'include_id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


