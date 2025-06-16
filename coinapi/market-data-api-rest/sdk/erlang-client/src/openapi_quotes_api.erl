-module(openapi_quotes_api).

-export([v1_quotes_current_get/1, v1_quotes_current_get/2,
         v1_quotes_latest_get/1, v1_quotes_latest_get/2,
         v1_quotes_symbol_id_current_get/2, v1_quotes_symbol_id_current_get/3,
         v1_quotes_symbol_id_history_get/2, v1_quotes_symbol_id_history_get/3,
         v1_quotes_symbol_id_latest_get/2, v1_quotes_symbol_id_latest_get/3]).

-define(BASE_URL, <<"">>).

%% @doc Current data
%% Get current quotes for all symbols or for a specific symbol.              :::info When requesting current data for a specific symbol, output is not encapsulated into JSON array as only one item is returned. :::
-spec v1_quotes_current_get(ctx:ctx()) -> {ok, [openapi_v1_quote_trade:openapi_v1_quote_trade()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_quotes_current_get(Ctx) ->
    v1_quotes_current_get(Ctx, #{}).

-spec v1_quotes_current_get(ctx:ctx(), maps:map()) -> {ok, [openapi_v1_quote_trade:openapi_v1_quote_trade()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_quotes_current_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/quotes/current"],
    QS = lists:flatten([])++openapi_utils:optional_params(['filter_symbol_id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Latest data
%% Get latest updates of the quotes up to 1 minute ago. Latest data is always returned in time descending order.
-spec v1_quotes_latest_get(ctx:ctx()) -> {ok, [openapi_v1_quote:openapi_v1_quote()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_quotes_latest_get(Ctx) ->
    v1_quotes_latest_get(Ctx, #{}).

-spec v1_quotes_latest_get(ctx:ctx(), maps:map()) -> {ok, [openapi_v1_quote:openapi_v1_quote()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_quotes_latest_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/quotes/latest"],
    QS = lists:flatten([])++openapi_utils:optional_params(['filter_symbol_id', 'limit'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Current quotes for a specific symbol
%% 
-spec v1_quotes_symbol_id_current_get(ctx:ctx(), binary()) -> {ok, openapi_v1_quote_trade:openapi_v1_quote_trade(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_quotes_symbol_id_current_get(Ctx, SymbolId) ->
    v1_quotes_symbol_id_current_get(Ctx, SymbolId, #{}).

-spec v1_quotes_symbol_id_current_get(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_v1_quote_trade:openapi_v1_quote_trade(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_quotes_symbol_id_current_get(Ctx, SymbolId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/quotes/", SymbolId, "/current"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Historical data
%% Get historical quote updates within requested time range, returned in time ascending order.  :::warning The 'time_start' and 'time_end' parameters must be from the same day as this endpoint provides intraday data only for specific day. Please use the 'date' parameter instead for querying data for a specific day without filter. :::
-spec v1_quotes_symbol_id_history_get(ctx:ctx(), binary()) -> {ok, [openapi_v1_quote:openapi_v1_quote()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_quotes_symbol_id_history_get(Ctx, SymbolId) ->
    v1_quotes_symbol_id_history_get(Ctx, SymbolId, #{}).

-spec v1_quotes_symbol_id_history_get(ctx:ctx(), binary(), maps:map()) -> {ok, [openapi_v1_quote:openapi_v1_quote()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_quotes_symbol_id_history_get(Ctx, SymbolId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/quotes/", SymbolId, "/history"],
    QS = lists:flatten([])++openapi_utils:optional_params(['date', 'time_start', 'time_end', 'limit'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Latest quote updates for a specific symbol
%% 
-spec v1_quotes_symbol_id_latest_get(ctx:ctx(), binary()) -> {ok, [openapi_v1_quote:openapi_v1_quote()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_quotes_symbol_id_latest_get(Ctx, SymbolId) ->
    v1_quotes_symbol_id_latest_get(Ctx, SymbolId, #{}).

-spec v1_quotes_symbol_id_latest_get(ctx:ctx(), binary(), maps:map()) -> {ok, [openapi_v1_quote:openapi_v1_quote()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_quotes_symbol_id_latest_get(Ctx, SymbolId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/quotes/", SymbolId, "/latest"],
    QS = lists:flatten([])++openapi_utils:optional_params(['limit'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


