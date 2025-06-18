-module(openapi_metrics_v1_api).

-export([v1_metrics_asset_current_get/1, v1_metrics_asset_current_get/2,
         v1_metrics_asset_history_get/3, v1_metrics_asset_history_get/4,
         v1_metrics_asset_listing_get/1, v1_metrics_asset_listing_get/2,
         v1_metrics_exchange_current_get/2, v1_metrics_exchange_current_get/3,
         v1_metrics_exchange_history_get/3, v1_metrics_exchange_history_get/4,
         v1_metrics_exchange_listing_get/2, v1_metrics_exchange_listing_get/3,
         v1_metrics_listing_get/1, v1_metrics_listing_get/2,
         v1_metrics_symbol_current_get/1, v1_metrics_symbol_current_get/2,
         v1_metrics_symbol_history_get/3, v1_metrics_symbol_history_get/4,
         v1_metrics_symbol_listing_get/1, v1_metrics_symbol_listing_get/2]).

-define(BASE_URL, <<"">>).

%% @doc Current metrics for given asset
%% Get current asset metrics.
-spec v1_metrics_asset_current_get(ctx:ctx()) -> {ok, [openapi_v1_general_data:openapi_v1_general_data()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_metrics_asset_current_get(Ctx) ->
    v1_metrics_asset_current_get(Ctx, #{}).

-spec v1_metrics_asset_current_get(ctx:ctx(), maps:map()) -> {ok, [openapi_v1_general_data:openapi_v1_general_data()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_metrics_asset_current_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/metrics/asset/current"],
    QS = lists:flatten([])++openapi_utils:optional_params(['metric_id', 'asset_id', 'asset_id_external', 'exchange_id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Historical metrics for asset
%% Get asset metrics history.
-spec v1_metrics_asset_history_get(ctx:ctx(), binary(), binary()) -> {ok, [openapi_v1_metric_data:openapi_v1_metric_data()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_metrics_asset_history_get(Ctx, MetricId, ExchangeId) ->
    v1_metrics_asset_history_get(Ctx, MetricId, ExchangeId, #{}).

-spec v1_metrics_asset_history_get(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, [openapi_v1_metric_data:openapi_v1_metric_data()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_metrics_asset_history_get(Ctx, MetricId, ExchangeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/metrics/asset/history"],
    QS = lists:flatten([{<<"metric_id">>, MetricId}, {<<"exchange_id">>, ExchangeId}])++openapi_utils:optional_params(['asset_id', 'asset_id_external', 'time_start', 'time_end', 'time_format', 'period_id', 'limit'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Listing of all supported metrics for asset
%% Get data metrics for asset.
-spec v1_metrics_asset_listing_get(ctx:ctx()) -> {ok, [openapi_v1_listing_item:openapi_v1_listing_item()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_metrics_asset_listing_get(Ctx) ->
    v1_metrics_asset_listing_get(Ctx, #{}).

-spec v1_metrics_asset_listing_get(ctx:ctx(), maps:map()) -> {ok, [openapi_v1_listing_item:openapi_v1_listing_item()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_metrics_asset_listing_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/metrics/asset/listing"],
    QS = lists:flatten([])++openapi_utils:optional_params(['metric_id', 'exchange_id', 'chain_id', 'network_id', 'asset_id', 'asset_id_external'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Current metrics for given exchange
%% Get current exchange metrics values.
-spec v1_metrics_exchange_current_get(ctx:ctx(), binary()) -> {ok, [openapi_v1_general_data:openapi_v1_general_data()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_metrics_exchange_current_get(Ctx, ExchangeId) ->
    v1_metrics_exchange_current_get(Ctx, ExchangeId, #{}).

-spec v1_metrics_exchange_current_get(ctx:ctx(), binary(), maps:map()) -> {ok, [openapi_v1_general_data:openapi_v1_general_data()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_metrics_exchange_current_get(Ctx, ExchangeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/metrics/exchange/current"],
    QS = lists:flatten([{<<"exchange_id">>, ExchangeId}])++openapi_utils:optional_params(['metric_id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Historical metrics for the exchange
%% Get exchange metrics history.
-spec v1_metrics_exchange_history_get(ctx:ctx(), binary(), binary()) -> {ok, [openapi_v1_metric_data:openapi_v1_metric_data()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_metrics_exchange_history_get(Ctx, MetricId, ExchangeId) ->
    v1_metrics_exchange_history_get(Ctx, MetricId, ExchangeId, #{}).

-spec v1_metrics_exchange_history_get(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, [openapi_v1_metric_data:openapi_v1_metric_data()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_metrics_exchange_history_get(Ctx, MetricId, ExchangeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/metrics/exchange/history"],
    QS = lists:flatten([{<<"metric_id">>, MetricId}, {<<"exchange_id">>, ExchangeId}])++openapi_utils:optional_params(['time_start', 'time_end', 'time_format', 'period_id', 'limit'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Listing of all supported exchange metrics
%% Get data metrics for exchange.
-spec v1_metrics_exchange_listing_get(ctx:ctx(), binary()) -> {ok, [openapi_v1_listing_item:openapi_v1_listing_item()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_metrics_exchange_listing_get(Ctx, ExchangeId) ->
    v1_metrics_exchange_listing_get(Ctx, ExchangeId, #{}).

-spec v1_metrics_exchange_listing_get(ctx:ctx(), binary(), maps:map()) -> {ok, [openapi_v1_listing_item:openapi_v1_listing_item()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_metrics_exchange_listing_get(Ctx, ExchangeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/metrics/exchange/listing"],
    QS = lists:flatten([{<<"exchange_id">>, ExchangeId}])++openapi_utils:optional_params(['metric_id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Listing of all supported metrics by CoinAPI
%% Get all data metrics.
-spec v1_metrics_listing_get(ctx:ctx()) -> {ok, [openapi_v1_metric:openapi_v1_metric()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_metrics_listing_get(Ctx) ->
    v1_metrics_listing_get(Ctx, #{}).

-spec v1_metrics_listing_get(ctx:ctx(), maps:map()) -> {ok, [openapi_v1_metric:openapi_v1_metric()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_metrics_listing_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/metrics/listing"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Current metrics for given symbol
%% Get current symbol metrics.
-spec v1_metrics_symbol_current_get(ctx:ctx()) -> {ok, [openapi_v1_general_data:openapi_v1_general_data()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_metrics_symbol_current_get(Ctx) ->
    v1_metrics_symbol_current_get(Ctx, #{}).

-spec v1_metrics_symbol_current_get(ctx:ctx(), maps:map()) -> {ok, [openapi_v1_general_data:openapi_v1_general_data()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_metrics_symbol_current_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/metrics/symbol/current"],
    QS = lists:flatten([])++openapi_utils:optional_params(['metric_id', 'symbol_id', 'exchange_id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Historical metrics for symbol
%% Get symbol metrics history.
-spec v1_metrics_symbol_history_get(ctx:ctx(), binary(), binary()) -> {ok, [openapi_v1_metric_data:openapi_v1_metric_data()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_metrics_symbol_history_get(Ctx, MetricId, SymbolId) ->
    v1_metrics_symbol_history_get(Ctx, MetricId, SymbolId, #{}).

-spec v1_metrics_symbol_history_get(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, [openapi_v1_metric_data:openapi_v1_metric_data()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_metrics_symbol_history_get(Ctx, MetricId, SymbolId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/metrics/symbol/history"],
    QS = lists:flatten([{<<"metric_id">>, MetricId}, {<<"symbol_id">>, SymbolId}])++openapi_utils:optional_params(['time_start', 'time_end', 'time_format', 'period_id', 'limit'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Listing of all supported metrics for symbol
%% Get data metrics for symbol.
-spec v1_metrics_symbol_listing_get(ctx:ctx()) -> {ok, [openapi_v1_listing_item:openapi_v1_listing_item()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_metrics_symbol_listing_get(Ctx) ->
    v1_metrics_symbol_listing_get(Ctx, #{}).

-spec v1_metrics_symbol_listing_get(ctx:ctx(), maps:map()) -> {ok, [openapi_v1_listing_item:openapi_v1_listing_item()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_metrics_symbol_listing_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/metrics/symbol/listing"],
    QS = lists:flatten([])++openapi_utils:optional_params(['metric_id', 'exchange_id', 'symbol_id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


