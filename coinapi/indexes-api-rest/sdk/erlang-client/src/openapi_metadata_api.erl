-module(openapi_metadata_api).

-export([api_metadata_exchanges_exchange_id_get/2, api_metadata_exchanges_exchange_id_get/3,
         api_metadata_exchanges_get/1, api_metadata_exchanges_get/2]).

-define(BASE_URL, <<"">>).

%% @doc List all exchanges by exchange_id
%% 
-spec api_metadata_exchanges_exchange_id_get(ctx:ctx(), binary()) -> {ok, [openapi_metadata_exchange:openapi_metadata_exchange()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
api_metadata_exchanges_exchange_id_get(Ctx, ExchangeId) ->
    api_metadata_exchanges_exchange_id_get(Ctx, ExchangeId, #{}).

-spec api_metadata_exchanges_exchange_id_get(ctx:ctx(), binary(), maps:map()) -> {ok, [openapi_metadata_exchange:openapi_metadata_exchange()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
api_metadata_exchanges_exchange_id_get(Ctx, ExchangeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/metadata/exchanges/", ExchangeId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List all exchanges
%% Get a detailed list of exchanges provided by the system.              :::info Properties of the output are providing aggregated information from across all symbols related to the specific exchange. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source. :::
-spec api_metadata_exchanges_get(ctx:ctx()) -> {ok, [openapi_metadata_exchange:openapi_metadata_exchange()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
api_metadata_exchanges_get(Ctx) ->
    api_metadata_exchanges_get(Ctx, #{}).

-spec api_metadata_exchanges_get(ctx:ctx(), maps:map()) -> {ok, [openapi_metadata_exchange:openapi_metadata_exchange()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
api_metadata_exchanges_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/metadata/exchanges"],
    QS = lists:flatten([])++openapi_utils:optional_params(['filter_exchange_id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


