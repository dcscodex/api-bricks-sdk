-module(openapi_order_book_l3_api).

-export([v1_orderbooks3_current_get/1, v1_orderbooks3_current_get/2,
         v1_orderbooks3_symbol_id_current_get/2, v1_orderbooks3_symbol_id_current_get/3]).

-define(BASE_URL, <<"">>).

%% @doc Current order books
%% 
-spec v1_orderbooks3_current_get(ctx:ctx()) -> {ok, [openapi_v1_order_book_base:openapi_v1_order_book_base()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_orderbooks3_current_get(Ctx) ->
    v1_orderbooks3_current_get(Ctx, #{}).

-spec v1_orderbooks3_current_get(ctx:ctx(), maps:map()) -> {ok, [openapi_v1_order_book_base:openapi_v1_order_book_base()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_orderbooks3_current_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/orderbooks3/current"],
    QS = lists:flatten([])++openapi_utils:optional_params(['filter_symbol_id', 'limit_levels'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Current order book by symbol_id
%% Retrieves the current order book for the specified symbol.
-spec v1_orderbooks3_symbol_id_current_get(ctx:ctx(), binary()) -> {ok, openapi_v1_order_book_base:openapi_v1_order_book_base(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_orderbooks3_symbol_id_current_get(Ctx, SymbolId) ->
    v1_orderbooks3_symbol_id_current_get(Ctx, SymbolId, #{}).

-spec v1_orderbooks3_symbol_id_current_get(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_v1_order_book_base:openapi_v1_order_book_base(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_orderbooks3_symbol_id_current_get(Ctx, SymbolId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/orderbooks3/", SymbolId, "/current"],
    QS = lists:flatten([])++openapi_utils:optional_params(['limit_levels'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


