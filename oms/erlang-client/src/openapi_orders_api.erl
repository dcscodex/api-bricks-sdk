-module(openapi_orders_api).

-export([v1_orders_cancel_all_post/2, v1_orders_cancel_all_post/3,
         v1_orders_cancel_post/2, v1_orders_cancel_post/3,
         v1_orders_get/1, v1_orders_get/2,
         v1_orders_post/2, v1_orders_post/3]).

-define(BASE_URL, "").

%% @doc Cancel all order
%% Cancel all existing order.
-spec v1_orders_cancel_all_post(ctx:ctx(), openapi_cancel_all_order:openapi_cancel_all_order()) -> {ok, openapi_messages_ok:openapi_messages_ok(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_orders_cancel_all_post(Ctx, OpenapiCancelAllOrder) ->
    v1_orders_cancel_all_post(Ctx, OpenapiCancelAllOrder, #{}).

-spec v1_orders_cancel_all_post(ctx:ctx(), openapi_cancel_all_order:openapi_cancel_all_order(), maps:map()) -> {ok, openapi_messages_ok:openapi_messages_ok(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_orders_cancel_all_post(Ctx, OpenapiCancelAllOrder, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/v1/orders/cancel/all"],
    QS = [],
    Headers = [],
    Body1 = OpenapiCancelAllOrder,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Cancel order
%% Cancel an existing order, can be used to cancel margin, exchange, and derivative orders. You can cancel the order by the internal order ID or exchange order ID.
-spec v1_orders_cancel_post(ctx:ctx(), openapi_cancel_order:openapi_cancel_order()) -> {ok, openapi_order_live:openapi_order_live(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_orders_cancel_post(Ctx, OpenapiCancelOrder) ->
    v1_orders_cancel_post(Ctx, OpenapiCancelOrder, #{}).

-spec v1_orders_cancel_post(ctx:ctx(), openapi_cancel_order:openapi_cancel_order(), maps:map()) -> {ok, openapi_order_live:openapi_order_live(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_orders_cancel_post(Ctx, OpenapiCancelOrder, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/v1/orders/cancel"],
    QS = [],
    Headers = [],
    Body1 = OpenapiCancelOrder,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get orders
%% List your current open orders.
-spec v1_orders_get(ctx:ctx()) -> {ok, [openapi_order:openapi_order()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_orders_get(Ctx) ->
    v1_orders_get(Ctx, #{}).

-spec v1_orders_get(ctx:ctx(), maps:map()) -> {ok, [openapi_order:openapi_order()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_orders_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v1/orders"],
    QS = lists:flatten([])++openapi_utils:optional_params(['exchange_id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create new order
%% You can place two types of orders: limit and market. Orders can only be placed if your account has sufficient funds.
-spec v1_orders_post(ctx:ctx(), openapi_new_order:openapi_new_order()) -> {ok, openapi_order_live:openapi_order_live(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_orders_post(Ctx, OpenapiNewOrder) ->
    v1_orders_post(Ctx, OpenapiNewOrder, #{}).

-spec v1_orders_post(ctx:ctx(), openapi_new_order:openapi_new_order(), maps:map()) -> {ok, openapi_order_live:openapi_order_live(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_orders_post(Ctx, OpenapiNewOrder, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/v1/orders"],
    QS = [],
    Headers = [],
    Body1 = OpenapiNewOrder,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


