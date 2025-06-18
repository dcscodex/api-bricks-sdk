-module(openapi_metrics_v2_api).

-export([v2_metrics_asset_history_get/3, v2_metrics_asset_history_get/4,
         v2_metrics_asset_listing_get/2, v2_metrics_asset_listing_get/3,
         v2_metrics_chain_history_get/3, v2_metrics_chain_history_get/4,
         v2_metrics_chain_listing_get/2, v2_metrics_chain_listing_get/3,
         v2_metrics_exchange_history_get/3, v2_metrics_exchange_history_get/4,
         v2_metrics_exchange_listing_get/2, v2_metrics_exchange_listing_get/3,
         v2_metrics_listing_get/1, v2_metrics_listing_get/2]).

-define(BASE_URL, <<"">>).

%% @doc Historical metrics for the asset
%% Get asset metrics history.
-spec v2_metrics_asset_history_get(ctx:ctx(), binary(), binary()) -> {ok, [maps:map()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v2_metrics_asset_history_get(Ctx, MetricId, AssetId) ->
    v2_metrics_asset_history_get(Ctx, MetricId, AssetId, #{}).

-spec v2_metrics_asset_history_get(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, [maps:map()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v2_metrics_asset_history_get(Ctx, MetricId, AssetId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v2/metrics/asset/history"],
    QS = lists:flatten([{<<"metric_id">>, MetricId}, {<<"asset_id">>, AssetId}])++openapi_utils:optional_params(['time_start', 'time_end', 'time_format', 'period_id', 'limit'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Listing of metrics available for specific asset
%% Get all metrics that are actually available for the specified asset.
-spec v2_metrics_asset_listing_get(ctx:ctx(), binary()) -> {ok, [openapi_v1_metric_info:openapi_v1_metric_info()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v2_metrics_asset_listing_get(Ctx, AssetId) ->
    v2_metrics_asset_listing_get(Ctx, AssetId, #{}).

-spec v2_metrics_asset_listing_get(ctx:ctx(), binary(), maps:map()) -> {ok, [openapi_v1_metric_info:openapi_v1_metric_info()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v2_metrics_asset_listing_get(Ctx, AssetId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v2/metrics/asset/listing"],
    QS = lists:flatten([{<<"asset_id">>, AssetId}])++openapi_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Historical metrics for the chain
%% Get chain metrics history.
-spec v2_metrics_chain_history_get(ctx:ctx(), binary(), binary()) -> {ok, [maps:map()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v2_metrics_chain_history_get(Ctx, MetricId, ChainId) ->
    v2_metrics_chain_history_get(Ctx, MetricId, ChainId, #{}).

-spec v2_metrics_chain_history_get(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, [maps:map()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v2_metrics_chain_history_get(Ctx, MetricId, ChainId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v2/metrics/chain/history"],
    QS = lists:flatten([{<<"metric_id">>, MetricId}, {<<"chain_id">>, ChainId}])++openapi_utils:optional_params(['time_start', 'time_end', 'time_format', 'period_id', 'limit'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Listing of metrics available for specific chain
%% Get all metrics that are actually available for the specified blockchain chain.
-spec v2_metrics_chain_listing_get(ctx:ctx(), binary()) -> {ok, [openapi_v1_metric_info:openapi_v1_metric_info()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v2_metrics_chain_listing_get(Ctx, ChainId) ->
    v2_metrics_chain_listing_get(Ctx, ChainId, #{}).

-spec v2_metrics_chain_listing_get(ctx:ctx(), binary(), maps:map()) -> {ok, [openapi_v1_metric_info:openapi_v1_metric_info()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v2_metrics_chain_listing_get(Ctx, ChainId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v2/metrics/chain/listing"],
    QS = lists:flatten([{<<"chain_id">>, ChainId}])++openapi_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Historical metrics for the exchange
%% Get exchange metrics history.
-spec v2_metrics_exchange_history_get(ctx:ctx(), binary(), binary()) -> {ok, [maps:map()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v2_metrics_exchange_history_get(Ctx, MetricId, ExchangeId) ->
    v2_metrics_exchange_history_get(Ctx, MetricId, ExchangeId, #{}).

-spec v2_metrics_exchange_history_get(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, [maps:map()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v2_metrics_exchange_history_get(Ctx, MetricId, ExchangeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v2/metrics/exchange/history"],
    QS = lists:flatten([{<<"metric_id">>, MetricId}, {<<"exchange_id">>, ExchangeId}])++openapi_utils:optional_params(['time_start', 'time_end', 'time_format', 'period_id', 'limit'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Listing of metrics available for specific exchange
%% Get all metrics that are actually available for the specified exchange.
-spec v2_metrics_exchange_listing_get(ctx:ctx(), binary()) -> {ok, [openapi_v1_metric_info:openapi_v1_metric_info()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v2_metrics_exchange_listing_get(Ctx, ExchangeId) ->
    v2_metrics_exchange_listing_get(Ctx, ExchangeId, #{}).

-spec v2_metrics_exchange_listing_get(ctx:ctx(), binary(), maps:map()) -> {ok, [openapi_v1_metric_info:openapi_v1_metric_info()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v2_metrics_exchange_listing_get(Ctx, ExchangeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v2/metrics/exchange/listing"],
    QS = lists:flatten([{<<"exchange_id">>, ExchangeId}])++openapi_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Listing of all supported metrics
%% Get all metrics available in the system.
-spec v2_metrics_listing_get(ctx:ctx()) -> {ok, [openapi_v1_metric_info:openapi_v1_metric_info()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v2_metrics_listing_get(Ctx) ->
    v2_metrics_listing_get(Ctx, #{}).

-spec v2_metrics_listing_get(ctx:ctx(), maps:map()) -> {ok, [openapi_v1_metric_info:openapi_v1_metric_info()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v2_metrics_listing_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v2/metrics/listing"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


