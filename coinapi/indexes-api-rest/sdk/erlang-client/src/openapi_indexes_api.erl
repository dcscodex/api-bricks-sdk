-module(openapi_indexes_api).

-export([v1_indexdef_input_data_index_definition_id_all_get/2, v1_indexdef_input_data_index_definition_id_all_get/3,
         v1_indexdef_input_data_index_definition_id_get/2, v1_indexdef_input_data_index_definition_id_get/3,
         v1_indexdef_multiasset_get/1, v1_indexdef_multiasset_get/2,
         v1_indexdef_multiasset_index_id_get/2, v1_indexdef_multiasset_index_id_get/3,
         v1_indexes_get/1, v1_indexes_get/2,
         v1_indexes_index_definition_id_current_snapshot_get/2, v1_indexes_index_definition_id_current_snapshot_get/3,
         v1_indexes_index_definition_id_history_snapshot_get/2, v1_indexes_index_definition_id_history_snapshot_get/3,
         v1_indexes_index_id_current_get/2, v1_indexes_index_id_current_get/3,
         v1_indexes_index_id_history_get/2, v1_indexes_index_id_history_get/3,
         v1_indexes_index_id_timeseries_get/5, v1_indexes_index_id_timeseries_get/6]).

-define(BASE_URL, <<"">>).

%% @doc Returns all data inputs for a specific index definition
%% 
-spec v1_indexdef_input_data_index_definition_id_all_get(ctx:ctx(), binary()) -> {ok, [openapi_indexes_index_definition_input_data:openapi_indexes_index_definition_input_data()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_indexdef_input_data_index_definition_id_all_get(Ctx, IndexDefinitionId) ->
    v1_indexdef_input_data_index_definition_id_all_get(Ctx, IndexDefinitionId, #{}).

-spec v1_indexdef_input_data_index_definition_id_all_get(ctx:ctx(), binary(), maps:map()) -> {ok, [openapi_indexes_index_definition_input_data:openapi_indexes_index_definition_input_data()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_indexdef_input_data_index_definition_id_all_get(Ctx, IndexDefinitionId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/indexdef/input-data/", IndexDefinitionId, "/all"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Returns data inputs for certain index definition and time
%% 
-spec v1_indexdef_input_data_index_definition_id_get(ctx:ctx(), binary()) -> {ok, [openapi_indexes_index_definition_snapshot_entry:openapi_indexes_index_definition_snapshot_entry()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_indexdef_input_data_index_definition_id_get(Ctx, IndexDefinitionId) ->
    v1_indexdef_input_data_index_definition_id_get(Ctx, IndexDefinitionId, #{}).

-spec v1_indexdef_input_data_index_definition_id_get(ctx:ctx(), binary(), maps:map()) -> {ok, [openapi_indexes_index_definition_snapshot_entry:openapi_indexes_index_definition_snapshot_entry()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_indexdef_input_data_index_definition_id_get(Ctx, IndexDefinitionId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/indexdef/input-data/", IndexDefinitionId, ""],
    QS = lists:flatten([])++openapi_utils:optional_params(['time', 'enabled_only', 'pending_only', 'filter_asset_id', 'with_status_info'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get all multi-asset weights
%% 
-spec v1_indexdef_multiasset_get(ctx:ctx()) -> {ok, [openapi_indexes_index_multi_asset_weight:openapi_indexes_index_multi_asset_weight()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_indexdef_multiasset_get(Ctx) ->
    v1_indexdef_multiasset_get(Ctx, #{}).

-spec v1_indexdef_multiasset_get(ctx:ctx(), maps:map()) -> {ok, [openapi_indexes_index_multi_asset_weight:openapi_indexes_index_multi_asset_weight()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_indexdef_multiasset_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/indexdef/multiasset"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get multi-asset weights for specific index
%% 
-spec v1_indexdef_multiasset_index_id_get(ctx:ctx(), binary()) -> {ok, [openapi_indexes_index_multi_asset_weight:openapi_indexes_index_multi_asset_weight()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_indexdef_multiasset_index_id_get(Ctx, IndexId) ->
    v1_indexdef_multiasset_index_id_get(Ctx, IndexId, #{}).

-spec v1_indexdef_multiasset_index_id_get(ctx:ctx(), binary(), maps:map()) -> {ok, [openapi_indexes_index_multi_asset_weight:openapi_indexes_index_multi_asset_weight()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_indexdef_multiasset_index_id_get(Ctx, IndexId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/indexdef/multiasset/", IndexId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List indexes
%% 
-spec v1_indexes_get(ctx:ctx()) -> {ok, [openapi_indexes_index_identifier:openapi_indexes_index_identifier()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_indexes_get(Ctx) ->
    v1_indexes_get(Ctx, #{}).

-spec v1_indexes_get(ctx:ctx(), maps:map()) -> {ok, [openapi_indexes_index_identifier:openapi_indexes_index_identifier()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_indexes_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/indexes"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Current Index Values for index definition
%% 
-spec v1_indexes_index_definition_id_current_snapshot_get(ctx:ctx(), binary()) -> {ok, [openapi_indexes_index_definition_snapshot_entry:openapi_indexes_index_definition_snapshot_entry()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_indexes_index_definition_id_current_snapshot_get(Ctx, IndexDefinitionId) ->
    v1_indexes_index_definition_id_current_snapshot_get(Ctx, IndexDefinitionId, #{}).

-spec v1_indexes_index_definition_id_current_snapshot_get(ctx:ctx(), binary(), maps:map()) -> {ok, [openapi_indexes_index_definition_snapshot_entry:openapi_indexes_index_definition_snapshot_entry()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_indexes_index_definition_id_current_snapshot_get(Ctx, IndexDefinitionId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/indexes/", IndexDefinitionId, "/currentSnapshot"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Historical Index Values for index definition
%% 
-spec v1_indexes_index_definition_id_history_snapshot_get(ctx:ctx(), binary()) -> {ok, [openapi_indexes_index_definition_snapshot_entry:openapi_indexes_index_definition_snapshot_entry()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_indexes_index_definition_id_history_snapshot_get(Ctx, IndexDefinitionId) ->
    v1_indexes_index_definition_id_history_snapshot_get(Ctx, IndexDefinitionId, #{}).

-spec v1_indexes_index_definition_id_history_snapshot_get(ctx:ctx(), binary(), maps:map()) -> {ok, [openapi_indexes_index_definition_snapshot_entry:openapi_indexes_index_definition_snapshot_entry()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_indexes_index_definition_id_history_snapshot_get(Ctx, IndexDefinitionId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/indexes/", IndexDefinitionId, "/historySnapshot"],
    QS = lists:flatten([])++openapi_utils:optional_params(['time'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Current Index Value
%% 
-spec v1_indexes_index_id_current_get(ctx:ctx(), binary()) -> {ok, openapi_indexes_index_value:openapi_indexes_index_value(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_indexes_index_id_current_get(Ctx, IndexId) ->
    v1_indexes_index_id_current_get(Ctx, IndexId, #{}).

-spec v1_indexes_index_id_current_get(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_indexes_index_value:openapi_indexes_index_value(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_indexes_index_id_current_get(Ctx, IndexId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/indexes/", IndexId, "/current"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Historical Index Value w/Composition
%% 
-spec v1_indexes_index_id_history_get(ctx:ctx(), binary()) -> {ok, [openapi_indexes_index_value:openapi_indexes_index_value()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_indexes_index_id_history_get(Ctx, IndexId) ->
    v1_indexes_index_id_history_get(Ctx, IndexId, #{}).

-spec v1_indexes_index_id_history_get(ctx:ctx(), binary(), maps:map()) -> {ok, [openapi_indexes_index_value:openapi_indexes_index_value()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_indexes_index_id_history_get(Ctx, IndexId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/indexes/", IndexId, "/history"],
    QS = lists:flatten([])++openapi_utils:optional_params(['time_start', 'time_end', 'limit'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Timeseries Index Value
%% 
-spec v1_indexes_index_id_timeseries_get(ctx:ctx(), binary(), binary(), binary(), binary()) -> {ok, [openapi_indexes_index_timeseries_item:openapi_indexes_index_timeseries_item()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_indexes_index_id_timeseries_get(Ctx, IndexId, PeriodId, TimeStart, TimeEnd) ->
    v1_indexes_index_id_timeseries_get(Ctx, IndexId, PeriodId, TimeStart, TimeEnd, #{}).

-spec v1_indexes_index_id_timeseries_get(ctx:ctx(), binary(), binary(), binary(), binary(), maps:map()) -> {ok, [openapi_indexes_index_timeseries_item:openapi_indexes_index_timeseries_item()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_indexes_index_id_timeseries_get(Ctx, IndexId, PeriodId, TimeStart, TimeEnd, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/indexes/", IndexId, "/timeseries"],
    QS = lists:flatten([{<<"period_id">>, PeriodId}, {<<"time_start">>, TimeStart}, {<<"time_end">>, TimeEnd}])++openapi_utils:optional_params(['limit'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


