-module(openapi_order_book_api).

-export([v1_orderbooks_symbol_id_current_get/2, v1_orderbooks_symbol_id_current_get/3,
         v1_orderbooks_symbol_id_depth_current_get/2, v1_orderbooks_symbol_id_depth_current_get/3,
         v1_orderbooks_symbol_id_history_get/2, v1_orderbooks_symbol_id_history_get/3,
         v1_orderbooks_symbol_id_latest_get/2, v1_orderbooks_symbol_id_latest_get/3]).

-define(BASE_URL, <<"">>).

%% @doc Get current order book
%% Retrieves the current order book for the specified symbol.
-spec v1_orderbooks_symbol_id_current_get(ctx:ctx(), binary()) -> {ok, openapi_v1_order_book_base:openapi_v1_order_book_base(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_orderbooks_symbol_id_current_get(Ctx, SymbolId) ->
    v1_orderbooks_symbol_id_current_get(Ctx, SymbolId, #{}).

-spec v1_orderbooks_symbol_id_current_get(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_v1_order_book_base:openapi_v1_order_book_base(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_orderbooks_symbol_id_current_get(Ctx, SymbolId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/orderbooks/", SymbolId, "/current"],
    QS = lists:flatten([])++openapi_utils:optional_params(['limit_levels'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Current depth of the order book
%% Retrieves the current depth of the order book for the specified symbol.
-spec v1_orderbooks_symbol_id_depth_current_get(ctx:ctx(), binary()) -> {ok, openapi_v1_order_book_depth:openapi_v1_order_book_depth(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_orderbooks_symbol_id_depth_current_get(Ctx, SymbolId) ->
    v1_orderbooks_symbol_id_depth_current_get(Ctx, SymbolId, #{}).

-spec v1_orderbooks_symbol_id_depth_current_get(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_v1_order_book_depth:openapi_v1_order_book_depth(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_orderbooks_symbol_id_depth_current_get(Ctx, SymbolId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/orderbooks/", SymbolId, "/depth/current"],
    QS = lists:flatten([])++openapi_utils:optional_params(['limit_levels'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Historical data
%% Get historical order book snapshots for a specific symbol within time range, returned in time ascending order.                :::info  The historical order book data via the REST API is currently limited by a number of updates and to the maximum number of 20 levels.  :::    :::warning  The 'time_start' and 'time_end' parameters must be from the same day as this endpoint provides intraday data only for specific day.  Please use the 'date' parameter instead for querying data for a specific day without filter.  :::
-spec v1_orderbooks_symbol_id_history_get(ctx:ctx(), binary()) -> {ok, [openapi_v1_order_book:openapi_v1_order_book()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_orderbooks_symbol_id_history_get(Ctx, SymbolId) ->
    v1_orderbooks_symbol_id_history_get(Ctx, SymbolId, #{}).

-spec v1_orderbooks_symbol_id_history_get(ctx:ctx(), binary(), maps:map()) -> {ok, [openapi_v1_order_book:openapi_v1_order_book()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_orderbooks_symbol_id_history_get(Ctx, SymbolId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/orderbooks/", SymbolId, "/history"],
    QS = lists:flatten([])++openapi_utils:optional_params(['date', 'time_start', 'time_end', 'limit', 'limit_levels'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Latest data
%% Get latest order book snapshots for a specific symbol, returned in time descending order.                :::info  The historical order book data via the REST API is currently limited by a number of updates and to the maximum number of 20 levels.  :::
-spec v1_orderbooks_symbol_id_latest_get(ctx:ctx(), binary()) -> {ok, [openapi_v1_order_book:openapi_v1_order_book()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_orderbooks_symbol_id_latest_get(Ctx, SymbolId) ->
    v1_orderbooks_symbol_id_latest_get(Ctx, SymbolId, #{}).

-spec v1_orderbooks_symbol_id_latest_get(ctx:ctx(), binary(), maps:map()) -> {ok, [openapi_v1_order_book:openapi_v1_order_book()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_orderbooks_symbol_id_latest_get(Ctx, SymbolId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/orderbooks/", SymbolId, "/latest"],
    QS = lists:flatten([])++openapi_utils:optional_params(['limit', 'limit_levels'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


