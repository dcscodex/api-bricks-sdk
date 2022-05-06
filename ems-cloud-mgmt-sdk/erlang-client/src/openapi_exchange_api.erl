-module(openapi_exchange_api).

-export([exchange_login_require/1, exchange_login_require/2]).

-define(BASE_URL, <<"">>).

%% @doc Get exchange configuration
%% Get information about the required parameters or server site location of the exchanges supported in the EMS API.
-spec exchange_login_require(ctx:ctx()) -> {ok, [openapi_exchange_login_require:openapi_exchange_login_require()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
exchange_login_require(Ctx) ->
    exchange_login_require(Ctx, #{}).

-spec exchange_login_require(ctx:ctx(), maps:map()) -> {ok, [openapi_exchange_login_require:openapi_exchange_login_require()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
exchange_login_require(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/v1/exchanges">>],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


