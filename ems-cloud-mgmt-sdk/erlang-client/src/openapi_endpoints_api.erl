-module(openapi_endpoints_api).

-export([endpoints/1, endpoints/2]).

-define(BASE_URL, <<"">>).

%% @doc Get API endpoints
%% Get all API endpoints that the EMS API expose for your subscription.
-spec endpoints(ctx:ctx()) -> {ok, [openapi_account_endpoint:openapi_account_endpoint()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
endpoints(Ctx) ->
    endpoints(Ctx, #{}).

-spec endpoints(ctx:ctx(), maps:map()) -> {ok, [openapi_account_endpoint:openapi_account_endpoint()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
endpoints(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/v1/endpoints">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['filter_exchange_id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


