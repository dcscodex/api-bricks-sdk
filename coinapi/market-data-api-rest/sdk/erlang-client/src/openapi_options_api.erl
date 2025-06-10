-module(openapi_options_api).

-export([v1_options_exchange_id_current_get/2, v1_options_exchange_id_current_get/3]).

-define(BASE_URL, <<"">>).

%% @doc Current data by Exchange
%% Get current options data for a specific exchange.    Returns option data grouped by underlying asset, quote currency, and expiration time,  with quotes for both calls and puts at each strike price.
-spec v1_options_exchange_id_current_get(ctx:ctx(), binary()) -> {ok, [openapi_options_option_exchange_group:openapi_options_option_exchange_group()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_options_exchange_id_current_get(Ctx, ExchangeId) ->
    v1_options_exchange_id_current_get(Ctx, ExchangeId, #{}).

-spec v1_options_exchange_id_current_get(ctx:ctx(), binary(), maps:map()) -> {ok, [openapi_options_option_exchange_group:openapi_options_option_exchange_group()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_options_exchange_id_current_get(Ctx, ExchangeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/options/", ExchangeId, "/current"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


