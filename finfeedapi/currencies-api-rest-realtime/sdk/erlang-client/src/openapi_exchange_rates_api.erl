-module(openapi_exchange_rates_api).

-export([get_specific_rate/3, get_specific_rate/4,
         v1_exchangerate_asset_id_base_get/2, v1_exchangerate_asset_id_base_get/3]).

-define(BASE_URL, <<"">>).

%% @doc Get specific rate
%% Retrieves the exchange rate for a specific base and quote asset at a given time or the current rate.                :::info  If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements.  :::
-spec get_specific_rate(ctx:ctx(), binary(), binary()) -> {ok, openapi_v1_exchange_rate:openapi_v1_exchange_rate(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_specific_rate(Ctx, AssetIdBase, AssetIdQuote) ->
    get_specific_rate(Ctx, AssetIdBase, AssetIdQuote, #{}).

-spec get_specific_rate(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, openapi_v1_exchange_rate:openapi_v1_exchange_rate(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_specific_rate(Ctx, AssetIdBase, AssetIdQuote, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/exchangerate/", AssetIdBase, "/", AssetIdQuote, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get all current rates
%% Get the current exchange rate between requested asset and all other assets.                :::info  If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements.  :::                :::info  You can invert the rates by using Y = 1 / X equation, for example BTC/USD = 1 / (USD/BTC);  :::
-spec v1_exchangerate_asset_id_base_get(ctx:ctx(), binary()) -> {ok, openapi_v1_exchange_rates:openapi_v1_exchange_rates(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_exchangerate_asset_id_base_get(Ctx, AssetIdBase) ->
    v1_exchangerate_asset_id_base_get(Ctx, AssetIdBase, #{}).

-spec v1_exchangerate_asset_id_base_get(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_v1_exchange_rates:openapi_v1_exchange_rates(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_exchangerate_asset_id_base_get(Ctx, AssetIdBase, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/exchangerate/", AssetIdBase, ""],
    QS = lists:flatten([])++openapi_utils:optional_params(['filter_asset_id', 'invert'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


