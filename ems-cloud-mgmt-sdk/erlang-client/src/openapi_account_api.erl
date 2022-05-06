-module(openapi_account_api).

-export([delete_account/2, delete_account/3,
         delete_account_all/1, delete_account_all/2,
         get_account/1, get_account/2,
         persist_account/2, persist_account/3]).

-define(BASE_URL, <<"">>).

%% @doc Delete account
%% Delete specific exchange account maintained by the EMS API for your subscription.
-spec delete_account(ctx:ctx(), list()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_account(Ctx, ExchangeId) ->
    delete_account(Ctx, ExchangeId, #{}).

-spec delete_account(ctx:ctx(), list(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_account(Ctx, ExchangeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = [<<"/v1/accounts">>],
    QS = lists:flatten([[{<<"exchange_id">>, X} || X <- ExchangeId]])++openapi_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete all accounts
%% Delete all exchange accounts maintained by the EMS API for your subscription.
-spec delete_account_all(ctx:ctx()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_account_all(Ctx) ->
    delete_account_all(Ctx, #{}).

-spec delete_account_all(ctx:ctx(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_account_all(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = [<<"/v1/accounts/all">>],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get accounts
%% Get all accounts maintained for your subscription in the EMS API.
-spec get_account(ctx:ctx()) -> {ok, [openapi_get_account:openapi_get_account()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_account(Ctx) ->
    get_account(Ctx, #{}).

-spec get_account(ctx:ctx(), maps:map()) -> {ok, [openapi_get_account:openapi_get_account()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_account(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/v1/accounts">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['filter_exchange_id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Add or update account
%% Add new or update existing exchange account for your subscription in the EMS API.
-spec persist_account(ctx:ctx(), openapi_account_data:openapi_account_data()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
persist_account(Ctx, Body) ->
    persist_account(Ctx, Body, #{}).

-spec persist_account(ctx:ctx(), openapi_account_data:openapi_account_data(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
persist_account(Ctx, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = [<<"/v1/accounts">>],
    QS = [],
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


