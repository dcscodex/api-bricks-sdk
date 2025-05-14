-module(openapi_native_iex_api).

-export([v1_native_iex_admin_messages_symbol_get/3, v1_native_iex_admin_messages_symbol_get/4,
         v1_native_iex_admin_system_event_get/2, v1_native_iex_admin_system_event_get/3,
         v1_native_iex_level1_quote_symbol_get/3, v1_native_iex_level1_quote_symbol_get/4,
         v1_native_iex_level2_price_level_update_symbol_get/3, v1_native_iex_level2_price_level_update_symbol_get/4,
         v1_native_iex_level3_order_book_symbol_get/3, v1_native_iex_level3_order_book_symbol_get/4,
         v1_native_iex_trade_symbol_get/3, v1_native_iex_trade_symbol_get/4]).

-define(BASE_URL, <<"">>).

%% @doc Get Admin Messages
%% 
-spec v1_native_iex_admin_messages_symbol_get(ctx:ctx(), binary(), openapi_date_time:openapi_date_time()) -> {ok, [openapi_admin_admin_message_model:openapi_admin_admin_message_model()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_native_iex_admin_messages_symbol_get(Ctx, Symbol, Date) ->
    v1_native_iex_admin_messages_symbol_get(Ctx, Symbol, Date, #{}).

-spec v1_native_iex_admin_messages_symbol_get(ctx:ctx(), binary(), openapi_date_time:openapi_date_time(), maps:map()) -> {ok, [openapi_admin_admin_message_model:openapi_admin_admin_message_model()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_native_iex_admin_messages_symbol_get(Ctx, Symbol, Date, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/native/iex/admin/messages/", Symbol, ""],
    QS = lists:flatten([{<<"date">>, Date}])++openapi_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get System Events
%% 
-spec v1_native_iex_admin_system_event_get(ctx:ctx(), openapi_date_time:openapi_date_time()) -> {ok, [openapi_admin_system_event_model:openapi_admin_system_event_model()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_native_iex_admin_system_event_get(Ctx, Date) ->
    v1_native_iex_admin_system_event_get(Ctx, Date, #{}).

-spec v1_native_iex_admin_system_event_get(ctx:ctx(), openapi_date_time:openapi_date_time(), maps:map()) -> {ok, [openapi_admin_system_event_model:openapi_admin_system_event_model()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_native_iex_admin_system_event_get(Ctx, Date, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/native/iex/admin/system-event"],
    QS = lists:flatten([{<<"date">>, Date}])++openapi_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Level-1 Quotes
%% 
-spec v1_native_iex_level1_quote_symbol_get(ctx:ctx(), binary(), openapi_date_time:openapi_date_time()) -> {ok, [openapi_level1_quote_update_model:openapi_level1_quote_update_model()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_native_iex_level1_quote_symbol_get(Ctx, Symbol, Date) ->
    v1_native_iex_level1_quote_symbol_get(Ctx, Symbol, Date, #{}).

-spec v1_native_iex_level1_quote_symbol_get(ctx:ctx(), binary(), openapi_date_time:openapi_date_time(), maps:map()) -> {ok, [openapi_level1_quote_update_model:openapi_level1_quote_update_model()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_native_iex_level1_quote_symbol_get(Ctx, Symbol, Date, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/native/iex/level1-quote/", Symbol, ""],
    QS = lists:flatten([{<<"date">>, Date}])++openapi_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Level-2 Price Level Book
%% 
-spec v1_native_iex_level2_price_level_update_symbol_get(ctx:ctx(), binary(), openapi_date_time:openapi_date_time()) -> {ok, [openapi_level2_price_level_update_model:openapi_level2_price_level_update_model()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_native_iex_level2_price_level_update_symbol_get(Ctx, Symbol, Date) ->
    v1_native_iex_level2_price_level_update_symbol_get(Ctx, Symbol, Date, #{}).

-spec v1_native_iex_level2_price_level_update_symbol_get(ctx:ctx(), binary(), openapi_date_time:openapi_date_time(), maps:map()) -> {ok, [openapi_level2_price_level_update_model:openapi_level2_price_level_update_model()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_native_iex_level2_price_level_update_symbol_get(Ctx, Symbol, Date, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/native/iex/level2-price-level-update/", Symbol, ""],
    QS = lists:flatten([{<<"date">>, Date}])++openapi_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Level-3 Order Book
%% 
-spec v1_native_iex_level3_order_book_symbol_get(ctx:ctx(), binary(), openapi_date_time:openapi_date_time()) -> {ok, [openapi_level3_order_book_model:openapi_level3_order_book_model()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_native_iex_level3_order_book_symbol_get(Ctx, Symbol, Date) ->
    v1_native_iex_level3_order_book_symbol_get(Ctx, Symbol, Date, #{}).

-spec v1_native_iex_level3_order_book_symbol_get(ctx:ctx(), binary(), openapi_date_time:openapi_date_time(), maps:map()) -> {ok, [openapi_level3_order_book_model:openapi_level3_order_book_model()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_native_iex_level3_order_book_symbol_get(Ctx, Symbol, Date, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/native/iex/level3-order-book/", Symbol, ""],
    QS = lists:flatten([{<<"date">>, Date}])++openapi_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Trades
%% 
-spec v1_native_iex_trade_symbol_get(ctx:ctx(), binary(), openapi_date_time:openapi_date_time()) -> {ok, [openapi_trade_trade_model:openapi_trade_trade_model()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_native_iex_trade_symbol_get(Ctx, Symbol, Date) ->
    v1_native_iex_trade_symbol_get(Ctx, Symbol, Date, #{}).

-spec v1_native_iex_trade_symbol_get(ctx:ctx(), binary(), openapi_date_time:openapi_date_time(), maps:map()) -> {ok, [openapi_trade_trade_model:openapi_trade_trade_model()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_native_iex_trade_symbol_get(Ctx, Symbol, Date, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/native/iex/trade/", Symbol, ""],
    QS = lists:flatten([{<<"date">>, Date}])++openapi_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


