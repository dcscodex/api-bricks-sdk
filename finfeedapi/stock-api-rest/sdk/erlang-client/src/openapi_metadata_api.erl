-module(openapi_metadata_api).

-export([v1_exchanges_get/1, v1_exchanges_get/2,
         v1_symbols_exchange_id_get/2, v1_symbols_exchange_id_get/3]).

-define(BASE_URL, <<"">>).

%% @doc List of exchanges
%% 
-spec v1_exchanges_get(ctx:ctx()) -> {ok, [openapi_fin_feed_api_exchange_model:openapi_fin_feed_api_exchange_model()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_exchanges_get(Ctx) ->
    v1_exchanges_get(Ctx, #{}).

-spec v1_exchanges_get(ctx:ctx(), maps:map()) -> {ok, [openapi_fin_feed_api_exchange_model:openapi_fin_feed_api_exchange_model()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_exchanges_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/exchanges"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List of symbols for the exchange
%% 
-spec v1_symbols_exchange_id_get(ctx:ctx(), binary()) -> {ok, [openapi_fin_feed_api_symbol_model:openapi_fin_feed_api_symbol_model()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_symbols_exchange_id_get(Ctx, ExchangeId) ->
    v1_symbols_exchange_id_get(Ctx, ExchangeId, #{}).

-spec v1_symbols_exchange_id_get(ctx:ctx(), binary(), maps:map()) -> {ok, [openapi_fin_feed_api_symbol_model:openapi_fin_feed_api_symbol_model()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_symbols_exchange_id_get(Ctx, ExchangeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/symbols/", ExchangeId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


